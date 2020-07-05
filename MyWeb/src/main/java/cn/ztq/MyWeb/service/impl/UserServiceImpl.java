package cn.ztq.MyWeb.service.impl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import cn.ztq.MyWeb.dao.UserMapper;
import cn.ztq.MyWeb.entity.User;
import cn.ztq.MyWeb.service.UserService;
 
@Service("userService")
public class UserServiceImpl implements UserService{
	@Resource  
    private UserMapper userMapper;  
	
	@Override
	public User getUserByName(String username) {
		return userMapper.selectByName(username);
	}
	
	@Override
	public int addUser(User user) {
		return userMapper.insert(user);
	}

	@Override
	public List<String> getAllUsername() {
		return userMapper.selectAllUsername();
	}
}