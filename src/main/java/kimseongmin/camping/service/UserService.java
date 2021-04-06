package kimseongmin.camping.service;

import kimseongmin.camping.domain.User;

public interface UserService {
	User loginUser(String userId, String userPw);
	boolean addUser(User user);
}
