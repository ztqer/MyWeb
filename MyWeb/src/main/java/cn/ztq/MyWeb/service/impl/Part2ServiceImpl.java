package cn.ztq.MyWeb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import cn.ztq.MyWeb.dao.PersonalInformationMapper;
import cn.ztq.MyWeb.entity.PersonalInformation;
import cn.ztq.MyWeb.service.Part2Service;

@Service("part2Service")
public class Part2ServiceImpl implements Part2Service {
	@Resource
	private PersonalInformationMapper mapper;
	
	@Override
	public List<PersonalInformation> getInformation(String username) {
		//未上传信息的用户返回null
		try {
			return mapper.selectAll(username);
		} catch (Exception e) {
			return null;
		}
	}

	@Override 
	public int uploadInformation(String username,List<PersonalInformation> informationList) {
		//DDL(create/drop/alter)操作不支持事务
		mapper.drop(username);
		mapper.create(username);
		return mapper.insert(username,informationList);
	}
}
