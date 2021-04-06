package kimseongmin.camping.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/review")
public class AdminReviewController {
	@GetMapping("/listPosts")
	public String listPosts() {
		return "admin/review/listPosts";
	}
	
	@GetMapping("/readPost")
	public String readPost() {
		return "admin/review/readPost";
	}
}
