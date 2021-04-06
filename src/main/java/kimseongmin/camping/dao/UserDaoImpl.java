package kimseongmin.camping.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kimseongmin.camping.dao.map.UserMap;
import kimseongmin.camping.domain.User;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired private UserMap userMap;
	
	@Override
	public User loginUser(String userId, String userPw) {
		return userMap.loginUser(userId, userPw);
	}
	
	@Override
	public int insertUser(User user) {
		return userMap.insertUser(user);
	}
}
