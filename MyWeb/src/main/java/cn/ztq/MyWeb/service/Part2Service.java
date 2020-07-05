package cn.ztq.MyWeb.service;

import java.util.List;
import cn.ztq.MyWeb.entity.PersonalInformation;

public interface Part2Service {
	List<PersonalInformation> getInformation(String username);
	int uploadInformation(String username,List<PersonalInformation> informationList);
}
