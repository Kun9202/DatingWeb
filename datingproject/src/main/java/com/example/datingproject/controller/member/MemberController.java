package com.example.datingproject.controller.member;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.datingproject.model.email.MailSendService;
import com.example.datingproject.model.email.RedisUtil;
import com.example.datingproject.model.member.MemberDAO;

import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {

	@Autowired
	MemberDAO memberDao;

	@Autowired
	MailSendService mail;

	@Autowired
	RedisUtil util;

	@RequestMapping("member/pagelogin.do")
	public String pagelogin() {
		return "login/login";
	}

	@RequestMapping("member/emailcheck.do")
	public ResponseEntity<Map<String, String>> emailcheck(@RequestParam(name = "email") String userid) {
		int count = memberDao.useridcheck(userid);
		String message = "";
		if (count == 1) {
			message = "이미 있는 아이디입니다.";
		} else if (count == 0) {
			message = "메일이 발송되었습니다.인증번호를 입력해주세요";
			mail.joinEmail(userid);

		}
		Map<String, String> response = new HashMap<>();
		response.put("message", message);
		return ResponseEntity.ok(response);
	}

	@RequestMapping("member/verifyCode.do")
	public ResponseEntity<Map<String, String>> numcheck(@RequestParam(name = "email") String email,
			@RequestParam(name = "code") String code) {
		Boolean checked = mail.CheckAuthNum(email, code);
		String message = "";
		if (checked) {
			message = "ok";
			util.deleteData(code);
		} else {
			message = "틀렸습니다.";
		}
		Map<String, String> response = new HashMap<>();
		response.put("message", message);
		return ResponseEntity.ok(response);

	}

	@RequestMapping("member/join.do")
	public String join(@RequestParam(name = "email") String email, @RequestParam(name = "passwd") String passwd) {
		memberDao.join(email, passwd);
		return "redirect:/member/pagelogin.do";
	}

	@RequestMapping("member/login.do")
	public ModelAndView login(@RequestParam(name = "userid") String userid,
			@RequestParam(name = "passwd") String passwd, HttpSession session) {
		int info = memberDao.login(userid, passwd);
		String message = "";
		String url = "";
		if (info == 1) {
			session.setAttribute("userid", userid);
			message = "개인정보를 입력해주세요";
			url = "login/information";

		} else if (info == 2) {
			session.setAttribute("userid", userid);
			message = "환영합니다.";
			url = "main/main";
		}
		return new ModelAndView(url, "message", message);

	}

}