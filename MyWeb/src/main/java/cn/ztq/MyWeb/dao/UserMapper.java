package cn.ztq.MyWeb.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.ztq.MyWeb.entity.User;

public interface UserMapper {
	User selectByName(String username);
    int insert(User record);
    List<String> selectAllUsername();
}