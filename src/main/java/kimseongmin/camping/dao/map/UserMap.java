package kimseongmin.camping.dao.map;

import kimseongmin.camping.domain.User;

public interface UserMap {
	User loginUser(String userId, String userPw);
	int insertUser(User user);
}
