package kimseongmin.camping.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@GetMapping("/user")
	public String user() {
		return "admin/user";
	}
	
	@GetMapping("/reservation")
	public String reservation() {
		return "admin/reservation";
	}
}
