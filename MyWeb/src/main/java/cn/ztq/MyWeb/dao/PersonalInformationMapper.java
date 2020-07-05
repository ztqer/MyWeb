package cn.ztq.MyWeb.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.ztq.MyWeb.entity.PersonalInformation;

public interface PersonalInformationMapper {
	int drop(String username);
	int create(String username);
	int insert(@Param("value")String username,@Param("list")List<PersonalInformation> informationList);
	List<PersonalInformation> selectAll(String username);
}
