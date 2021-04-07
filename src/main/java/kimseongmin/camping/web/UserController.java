package kimseongmin.camping.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kimseongmin.camping.config.Log;
import kimseongmin.camping.domain.User;
import kimseongmin.camping.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired private UserService userService;
	
	@GetMapping("/login")
	public String login(String userId, @CookieValue(required=false) Cookie loginCookie) {
		if(loginCookie != null) userId = loginCookie.getValue();
		return "user/login";
	}
	
	@PostMapping("/login")
	@Log
	public User loginCheck(@Valid @RequestParam("userId") String userId,
			@RequestParam("userPw") String userPw,
			Model model, HttpServletRequest request) {
		User user = userService.loginUser(userId, userPw);
		
		if(user.getUserId().equals("admin")) {
			model.addAttribute("admin", user);
		} else {
			model.addAttribute("user", user);
		}
		
		return user;
	}
	
	@GetMapping("/logout")
	@Log
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	/*
	@PostMapping("/add")
	public boolean addUser(@RequestBody User user) {
		return userService.addUser(user);
	}
	*/
	
	@GetMapping("/join")
	public String join() {
		return "user/join";
	}
	
	@GetMapping("/findId")
	public String findId() {
		return "user/findId";
	}
	
	@GetMapping("/findPw1")
	public String findPw1() {
		return "user/findPw1";
	}
	
	@GetMapping("/findPw2")
	public String findPw2() {
		return "user/findPw2";
	}
	
	@GetMapping("/modify1")
	public String modify1() {
		return "user/modify1";
	}
	
	@GetMapping("/modify2")
	public String modify2() {
		return "user/modify2";
	}
	
	@GetMapping("/delete")
	public String delete() {
		return "user/delete";
	}
}
