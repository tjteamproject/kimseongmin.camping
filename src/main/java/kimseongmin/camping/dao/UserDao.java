package kimseongmin.camping.dao;

import kimseongmin.camping.domain.User;

public interface UserDao {
	User loginUser(String userId, String userPw);
	int insertUser(User user);
}
