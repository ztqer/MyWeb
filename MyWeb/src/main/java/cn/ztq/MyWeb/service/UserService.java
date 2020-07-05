package cn.ztq.MyWeb.service;

import java.util.List;
import cn.ztq.MyWeb.entity.User;

public interface UserService {
	User getUserByName(String username);
	int addUser(User user);
	List<String> getAllUsername();
}