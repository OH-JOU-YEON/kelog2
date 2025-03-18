package com.spring.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.Criteria2;
import com.spring.domain.PageDTO;
import com.spring.domain.PageDTO2;
import com.spring.domain.TravelPostDTO;
import com.spring.service.TravelService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/travel/*")
@Log4j
@RequiredArgsConstructor
public class TravelPostController {

	private final TravelService service;

	@GetMapping("/list")
	public void list(Criteria2 cri, Model model) {
		
		int total = service.getTotal();
		
		PageDTO2 pageDTO = new PageDTO2(cri, total);
		
		model.addAttribute("pageMaker", pageDTO);
		model.addAttribute("list", service.listAll());
	}

	@PostMapping("/getList")
	@ResponseBody
	public List<TravelPostDTO> getList(Criteria2 cri){
		return service.getList(cri);
	}
	
	
	@GetMapping("/created")
	public void TravelPostGet() {

	}

	@PostMapping("/created")
	public String created(@RequestParam("file") MultipartFile file, TravelPostDTO dto) {
		
		if (!file.isEmpty()) {
			String uploadFolder = "C:\\Users\\keduit\\Documents\\kelog\\kelog\\src\\main\\webapp\\resources\\img"; // 업로드 경로 설정
			String originalFileName = file.getOriginalFilename(); // 실제 첨부된 파일이름
			String uploadFileName = UUID.randomUUID().toString() + "_" + originalFileName;
			
			try {
				File saveFile = new File(uploadFolder, uploadFileName);
				file.transferTo(saveFile);
				dto.setThumbnail(uploadFileName);
				
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		} else {
            // 구글 프로필 사진 처리 (URL에서 이미지를 다운로드하여 변환)
            String imageUrl = dto.getThumbnail(); // 구글 프로필 사진 URL
            String uploadFolder = "C:\\Users\\keduit\\Documents\\kelog\\kelog\\src\\main\\webapp\\resources\\img"; // 업로드 경로
            String uploadFileName = UUID.randomUUID().toString() + ".jpg"; // JPG로 저장할 파일 이름 설정

            try {
                // 이미지 다운로드 및 변환
                URL url = new URL(imageUrl);
                BufferedImage image = ImageIO.read(url);

                if (image != null) {
                    // 이미지를 JPG 형식으로 저장
                    File outputFile = new File(uploadFolder, uploadFileName);
                    ImageIO.write(image, "JPG", outputFile);
                    dto.setThumbnail(uploadFileName); // 프로필 이미지 이름 설정
                    log.info("Google profile image saved as JPG.");
                } else {
                    log.error("Failed to download image from URL.");
                }
            } catch (IOException e) {
                log.error("Error while downloading or converting the image: " + e.getMessage());
            }
        }
		
		
		service.created(dto);

		return "redirect:/travel/list";
	}

	@GetMapping({ "/read", "/modify" })
	public void get(@RequestParam("travelBoardNo") Integer travelBoardNo, Model model, HttpSession session) {
		log.info("travelBoardNo :" + travelBoardNo);
		
		Integer uno = (Integer) session.getAttribute("uno");
		if(uno == null) {
			TravelPostDTO dto = service.read(travelBoardNo);
			log.info(dto);
			model.addAttribute("dto", dto);
		}else {
			boolean isLiked = service.isUserLikedTravelPost(uno, travelBoardNo);
			boolean isunLiked = service.isUserunLikedTravelPost(uno, travelBoardNo);
			session.setAttribute("isliked", isLiked);
			session.setAttribute("isunliked", isunLiked);
			TravelPostDTO dto = service.read(travelBoardNo);
			log.info(dto);
			model.addAttribute("dto", dto);
		}
	}

	@PostMapping("/modify")
	public String modify(@ModelAttribute TravelPostDTO dto, RedirectAttributes rttr, @RequestParam("file") MultipartFile file) {
		
		if (!file.isEmpty()) {
			String uploadFolder = "C:\\Users\\keduit\\Documents\\kelog\\kelog\\src\\main\\webapp\\resources\\img"; // 업로드 경로 설정
			String originalFileName = file.getOriginalFilename(); // 실제 첨부된 파일이름
			String uploadFileName = UUID.randomUUID().toString() + "_" + originalFileName;
			
			try {
				File saveFile = new File(uploadFolder, uploadFileName);
				file.transferTo(saveFile);
				dto.setThumbnail(uploadFileName);
				
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		} else {
            // 구글 프로필 사진 처리 (URL에서 이미지를 다운로드하여 변환)
            String imageUrl = dto.getThumbnail(); // 구글 프로필 사진 URL
            String uploadFolder = "C:\\Users\\keduit\\Documents\\kelog2\\kelog\\src\\main\\webapp\\resources\\img"; // 업로드 경로
            String uploadFileName = UUID.randomUUID().toString() + ".jpg"; // JPG로 저장할 파일 이름 설정

            try {
                // 이미지 다운로드 및 변환
                URL url = new URL(imageUrl);
                BufferedImage image = ImageIO.read(url);

                if (image != null) {
                    // 이미지를 JPG 형식으로 저장
                    File outputFile = new File(uploadFolder, uploadFileName);
                    ImageIO.write(image, "JPG", outputFile);
                    dto.setThumbnail(uploadFileName); // 프로필 이미지 이름 설정
                    log.info("Google profile image saved as JPG.");
                } else {
                    log.error("Failed to download image from URL.");
                }
            } catch (IOException e) {
                log.error("Error while downloading or converting the image: " + e.getMessage());
            }
        }
		
		
		int updateRow = service.modify(dto);
		log.info("modify updateRow: " + updateRow);
		rttr.addFlashAttribute("result", "mod");
		return "redirect:/travel/read?travelBoardNo="+dto.getTravelBoardNo();
	}

	@PostMapping("/remove")
	public String delete(@RequestParam("travelBoardNo") Integer travelBoardNo, RedirectAttributes rttr) {
		int deleteRow = service.delete(travelBoardNo);
		log.info("delete deleteRow: " + deleteRow);
		rttr.addFlashAttribute("result", "del");
		return "redirect:/travel/list";
	}

	@PostMapping("/like")
	@ResponseBody
	public int like(@RequestParam("travelBoardNo") Integer travelBoardNo, HttpSession session) {

		Integer uno = (Integer) session.getAttribute("uno");
		
		System.out.println("호히원 아이디:: "+ uno);

		if (uno != 0 || uno != null) {
			boolean isLiked = service.isUserLikedTravelPost(uno, travelBoardNo);
			if (!isLiked) {
				session.setAttribute("isliked", isLiked);
				log.info(isLiked);
				System.out.println(isLiked);
				return service.uplikecount(travelBoardNo,uno);
			} else {
				session.setAttribute("isliked", isLiked);
				log.info(isLiked);
				System.out.println(isLiked);
				return service.unlikecount(travelBoardNo,uno);
			}
		}
		return 0;
	}
	
	@PostMapping("/unlike")
	@ResponseBody
	public int unlike(@RequestParam("travelBoardNo") Integer travelBoardNo, HttpSession session) {

		Integer uno = (Integer) session.getAttribute("uno");
		

		if (uno != 0 || uno != null) {
			boolean isunLiked = service.isUserunLikedTravelPost(uno, travelBoardNo);
			if (!isunLiked) {
				session.setAttribute("isunliked", isunLiked);
				return service.upunlikecount(travelBoardNo,uno);
			} else {
				session.setAttribute("isunliked", isunLiked);
				return service.ununlikecount(travelBoardNo,uno);
			}
		}
		return 0;
	}

}
