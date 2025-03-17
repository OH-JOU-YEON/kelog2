package com.spring.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.UriComponentsBuilder;

import com.spring.domain.GoogleOAuthURLDTO;
import com.spring.domain.UserDTO;
import com.spring.service.NickNameService;
import com.spring.service.UserService;

import java.io.*;
import java.net.*;
import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping("/user/*")
public class UserController {
	
	private final UserService userService;
	private final NickNameService nickNameService;
	
	@RequestMapping("/main")
	public String main() {
		return "/main";
	}
	
	
	@GetMapping("/login")
	public String loginForm(@RequestParam("email") String email,UserDTO user, HttpSession session,RedirectAttributes rttr) {
		UserDTO member = userService.selectUser(email);
		if(member != null) {
			String nick = nickNameService.selectNickName(member.getUno());
			// 로그인 성공
			log.info("membercontroller login: "+member);
			session.setAttribute("user", member);
			session.setAttribute("nickName", nick);
			session.setAttribute("uno", member.getUno());
            session.setAttribute("email", member.getEmail());
            return "/main";
		}else {
			
			return "/oauth/google/member";
		}
		
	}
	
	@PostMapping("/login")
	public String login(UserDTO user, HttpSession session, RedirectAttributes rttr) {
		UserDTO member = userService.login(user);
		if(member != null) {
			String nick = nickNameService.selectNickName(member.getUno());
			// 로그인 성공
			session.setAttribute("user", member);
			session.setAttribute("nickName", nick);
			session.setAttribute("uno", member.getUno());
            session.setAttribute("email", member.getEmail());
            return "/main";
		}else {
			// 로그인 실패
			// 화면에서 로그인 실패 시 alert 띄우기 
			rttr.addFlashAttribute("msg", "다시 시도해주세요!");
			return "redirect:/login/google/loing.do";
		}
		
	}
	

	@PostMapping("/create")
	public String register(UserDTO member,@RequestParam("nickName") String nickName ,HttpSession session,@RequestParam("file") MultipartFile file, RedirectAttributes rttr) {
		if (!file.isEmpty()) {
			String uploadFolder = "C:\\Users\\keduit\\Documents\\kelog\\kelog\\src\\main\\webapp\\resources\\img"; // 업로드 경로 설정
			String originalFileName = file.getOriginalFilename(); // 실제 첨부된 파일이름
			String uploadFileName = UUID.randomUUID().toString() + "_" + originalFileName;
			
			try {
				File saveFile = new File(uploadFolder, uploadFileName);
				file.transferTo(saveFile);
				member.setProfileImg(uploadFileName);
				
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		} else {
            // 구글 프로필 사진 처리 (URL에서 이미지를 다운로드하여 변환)
            String imageUrl = member.getProfileImg(); // 구글 프로필 사진 URL
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
                    member.setProfileImg(uploadFileName); // 프로필 이미지 이름 설정
                    log.info("Google profile image saved as JPG.");
                } else {
                    log.error("Failed to download image from URL.");
                }
            } catch (IOException e) {
                log.error("Error while downloading or converting the image: " + e.getMessage());
            }
        }
		
		log.info("membercontroller :"+member);
		userService.created(member);
		UserDTO user = userService.selectUser(member.getEmail());
		nickNameService.created(nickName,user.getUno());
		String Name = nickNameService.selectNickName(user.getUno());
		session.setAttribute("user", user);
		session.setAttribute("nickName", Name);
		session.setAttribute("uno", user.getUno());
		session.setAttribute("email", user.getEmail());
		return "/main";

	}
	@GetMapping({ "/read", "/modify" })
	public void get(@RequestParam("uno") Integer uno, Model model) {
		log.info("uno: " + uno);
		UserDTO user = userService.select(uno);
		String nickName = nickNameService.selectNickName(uno);

		log.info("nickName : "+nickName);
		log.info("user : "+user);
		model.addAttribute("nickName", nickName);
		model.addAttribute("user", user);
	}
	@PostMapping("/read")
	public String read() {
		return "/user/read";
	}
	
	
	@PostMapping("/modify")
	// 파라미터 자동수집
	public String modify(@ModelAttribute UserDTO member,@RequestParam("nickName") String nickName ,HttpSession session,@RequestParam("file") MultipartFile file ,RedirectAttributes rttr) {
		if (!file.isEmpty()) {
			String uploadFolder = "C:\\Users\\keduit\\Documents\\kelog\\kelog\\src\\main\\webapp\\resources\\img"; // 업로드 경로 설정
			String originalFileName = file.getOriginalFilename(); // 실제 첨부된 파일이름

			String oldFileName = member.getProfileImg();
			log.info("기존파일 :"+oldFileName);
			//기존 파일 삭제
			if(oldFileName !=null) {
				File oldFile= new File(uploadFolder,oldFileName);
				if(oldFile.exists()) {
					boolean deleted = oldFile.delete();
					log.info("기존파일 삭제 여부: "+deleted);
				}
			}
			
			
			String uploadFileName = UUID.randomUUID().toString() + "_" + originalFileName;
			
			try {
				File saveFile = new File(uploadFolder, uploadFileName);
				file.transferTo(saveFile);
				member.setProfileImg(uploadFileName);
				
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
		int updateRow = userService.modify(member);
		int updatenick = nickNameService.modify(nickName,member.getUno());
		
		log.info("modify updateRow: " + updateRow);
		log.info("modify updatenick: " + updatenick);
		UserDTO user = userService.select(member.getUno());
		String nN = nickNameService.selectNickName(user.getUno());
		session.setAttribute("user", user);
		session.setAttribute("nickName", nN);
		return "/user/read"; // 목록 페이지로 이동(get방식)
	}
	
	
	
	@GetMapping("/remove")
	public String delete(@RequestParam("uno") Integer uno,@RequestParam(value = "token") String token, HttpSession session) {

        Map<String, String> result = new HashMap<String,String>();
        RestTemplate restTemplate = new RestTemplate();
        final String requestUrl = UriComponentsBuilder.fromHttpUrl(GoogleOAuthURLDTO.GOOGLE_REVOKE_TOKEN_BASE_URL)
                .queryParam("token", token).encode().toUriString();
 
        log.info("TOKEN : " + token);
 
        String resultJson = restTemplate.postForObject(requestUrl, null, String.class);
        result.put("result", "success");
        result.put("resultJson", resultJson);
        log.info("member controller mno: "+uno);
        int deleteRow = userService.delete(uno);
        log.info("delete deleteRow: " + deleteRow);
        session.invalidate();
		
		return "redirect:/login/google/login.do";
	}
	@PostMapping("/checkNickname")
    @ResponseBody
    public Map<String, Boolean> checkNickname(@RequestParam("nickName") String nickName) {
        Map<String, Boolean> response = new HashMap<>();
        int nick = userService.isNicknameTaken(nickName); // 중복이면 false
        if(nick > 0) {
        	boolean isAvailable = false;
        	System.out.println("닉네임 확인: " + nickName + " -> 사용 가능: " + isAvailable);
            response.put("available", isAvailable);
            return response;
        }else {
        	boolean isAvailable = true;
        	System.out.println("닉네임 확인: " + nickName + " -> 사용 가능: " + isAvailable);
            response.put("available", isAvailable);
            return response;
        }
        
    }
	
}
