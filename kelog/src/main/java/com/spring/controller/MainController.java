package com.spring.controller;

import java.util.List;
import java.util.stream.Collectors;

import javax.annotation.PreDestroy;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.cj.jdbc.AbandonedConnectionCleanupThread; // MySQL 클린업 스레드 직접 호출
import com.spring.domain.BlogPostDTO;
import com.spring.domain.Criteria;
import com.spring.domain.Criteria2;
import com.spring.domain.PageDTO2;
import com.spring.domain.TravelPostDTO;
import com.spring.service.BlogService;
import com.spring.service.TipService;
import com.spring.service.TravelService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/")
@Log4j
@RequiredArgsConstructor
public class MainController {

    private final TravelService travelService;
    private final BlogService blogService;
    private final TipService tipService;

    @Autowired
    private DataSource dataSource;

    @GetMapping("/main")
    public String mainPage(Criteria2 travelCri, Criteria tipCri, Model model, HttpSession session) {
        if (travelCri.getPageNum() == 0) travelCri.setPageNum(1);
        travelCri.setAmount(3);
        log.info("Travel Criteria: " + travelCri);

        List<TravelPostDTO> travelList = travelService.getList(travelCri);
        log.info("Travel List: " + travelList);
        log.info("Travel List Size: " + travelList.size());

        int travelTotal = travelService.getTotal();
        PageDTO2 travelPageDTO = new PageDTO2(travelCri, travelTotal);
        model.addAttribute("travelList", travelList);
        model.addAttribute("travelPageMaker", travelPageDTO);

        List<BlogPostDTO> blogListFull = blogService.listAll();
        List<BlogPostDTO> blogList = blogListFull.stream()
            .sorted((a, b) -> b.getRegDate().compareTo(a.getRegDate()))
            .limit(1)
            .collect(Collectors.toList());
        log.info("Blog List: " + blogList);
        log.info("Blog List Size: " + blogList.size());
        model.addAttribute("blogList", blogList);

        String email = (String) session.getAttribute("email");
        Integer uno = (Integer) session.getAttribute("uno");
        System.out.println(email);
        System.out.println(uno);
        model.addAttribute("email", email);
        model.addAttribute("uno", uno);

        tipCri.setAmount(10);
        int tipTotal = tipService.getTotal();
        model.addAttribute("tipTotal", tipTotal);

        return "/main";
    }

    @PreDestroy 
    public void cleanup() {
        log.info("Shutting down application, closing database connections...");
        try {
            if (dataSource instanceof com.zaxxer.hikari.HikariDataSource) {
                ((com.zaxxer.hikari.HikariDataSource) dataSource).close();
                log.info("HikariDataSource closed successfully");
            }
            // MySQL AbandonedConnectionCleanupThread 강제 종료
            AbandonedConnectionCleanupThread.checkedShutdown();
            log.info("AbandonedConnectionCleanupThread shutdown successfully");
        } catch (Exception e) {
            log.error("Error during cleanup", e);
        }
    }
}