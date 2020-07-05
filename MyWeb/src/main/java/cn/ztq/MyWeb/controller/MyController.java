package cn.ztq.MyWeb.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import cn.ztq.MyWeb.entity.PersonalInformation;
import cn.ztq.MyWeb.entity.User;
import cn.ztq.MyWeb.service.Part2Service;
import cn.ztq.MyWeb.service.UserService;
 
@Controller
@RequestMapping("")
public class MyController {
	@Resource
	private UserService userService;
	@Resource
	private Part2Service part2Service;
 
	//登陆
	@RequestMapping("/login")
	public String toLogin(HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException{
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		if(username!=null && password!=null) {
			User user=userService.getUserByName(username);
			//登陆成功,并设置登陆状态cookie
			if(user!=null && username.equals(user.getUsername()) && password.equals(user.getPassword())) {
				return ControllerUtility.addLoginCookie(request, response,username);
			}
			request.setAttribute("warning", "登陆失败");
		}
		return "Login/login";
	}
	
	//注册
	@RequestMapping("/register")
	public String toRegister(HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException{
		String username=request.getParameter("username");
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		String passwordconfirm=request.getParameter("passwordconfirm");
		if(username!=null && phone!=null && password!=null && passwordconfirm!=null) {
			//防止空输入
			if(username.equals("") || phone.equals("") || password.equals("") || passwordconfirm.equals("")) {
				request.setAttribute("warning", "输入不能为空");
				return "Login/register";
			}
			User user=new User();
			user.setUsername(username);
			user.setPhone(phone);
			user.setPassword(password);
			//防止重名
			if(userService.getUserByName(username)!=null) {
				request.setAttribute("warning", "username重复");
				return "Login/register";
			}
			//验证密码
			if(!password.equals(passwordconfirm)) {
				request.setAttribute("warning", "密码不一致");
				return "Login/register";
			}
			//注册成功
			if(userService.addUser(user)>0) {
				return ControllerUtility.addLoginCookie(request, response, username);
			}
			request.setAttribute("warning", "注册失败，请重试");
			return "Login/register";
		}
		return "Login/register";
	}
	
	//主页
	@RequestMapping("/content")
	public String toContent(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "Content/content";
	}

	//part1
	@RequestMapping("/content/part1")
	public String toPart1(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "Content/Part1/part1";
	}
	
	//part2
	@RequestMapping("/content/part2")
	public String toPart2(HttpServletRequest request, HttpServletResponse response, Model model) {
		//取出所有记录供加载轮播内容
		ArrayList<String> userList=new ArrayList<String>(userService.getAllUsername());
		ArrayList<ArrayList<PersonalInformation>> totalInformation=new ArrayList<>();
		for(String username:userList) {
			if(part2Service.getInformation(username)!=null) {
				ArrayList<PersonalInformation> informationList=new ArrayList<PersonalInformation>(part2Service.getInformation(username));
				totalInformation.add(informationList);
			}}
		request.setAttribute("data", totalInformation);
		return "Content/Part2/part2";
	}

	//part2上传
	@RequestMapping("/content/part2/upload")
	public String toPart2Upload(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "Content/Part2/upload";
	}
	//part2上传
	@RequestMapping("/content/part2/upload/doPost")
	public String doPart2Upload(@RequestParam("picture") MultipartFile file,HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException {
		String username=ControllerUtility.readLoginCookie(request, response);
		if(username==null) {
			request.setAttribute("message", "登陆过期");
			return "Content/Part2/message";
		}
		if (file.isEmpty()) {
			request.setAttribute("message", "文件为空");
			return "Content/Part2/message";
		}
		//获取文件存储路径（绝对路径）
		String path = request.getServletContext().getRealPath("/pictures/upload/");
		//服务器存储在项目外的路径，读取时通过tomcat映射可得
		try {
			InetAddress address=InetAddress.getLocalHost();
			if(address.getHostName().equals("VM_16_2_centos")) {
				path="/webResources/MyWeb/uploadPictures/";
			}
		} catch (UnknownHostException e1) {
			e1.printStackTrace();
		}
		//生成随机文件名
		String fileName = UUID.randomUUID().toString();;
		//创建文件实例
		File filePath = new File(path, fileName);
		//如果文件目录不存在，创建目录
		//if (!filePath.getParentFile().exists()) {
			//filePath.getParentFile().mkdirs();
			//System.out.println("创建目录" + filePath);
		//}
		try {
			//写入文件
			file.transferTo(filePath);
			//记录文件名和表单其他部分于数据库
			List<PersonalInformation> list=new ArrayList<>();
			PersonalInformation fileInformation=new PersonalInformation();
			fileInformation.setKey("picture");
			fileInformation.setValue(fileName);
			list.add(fileInformation);
			String[] keys=request.getParameterValues("key");
			String[] values=request.getParameterValues("value");
			for(int i=0;i<=keys.length-1;i++) {
				PersonalInformation information=new PersonalInformation();
				information.setKey(keys[i]);
				information.setValue(values[i]);
				list.add(information);
			}
			part2Service.uploadInformation(username, list);
			request.setAttribute("message", "上传成功");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			request.setAttribute("message", "上传出错"+e.getMessage());
		}
		return "Content/Part2/message";
	}
	
	//part3
	@RequestMapping("/content/part3")
	public String toPart3(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "Content/Part3/part3";
	}
}