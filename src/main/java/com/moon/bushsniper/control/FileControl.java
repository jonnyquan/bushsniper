package com.moon.bushsniper.control;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.moon.bushsniper.bean.User;
import com.moon.bushsniper.utils.ImgUtils;

@Controller
@RequestMapping("/file")
public class FileControl {

	private static Logger logger = LoggerFactory.getLogger(FileControl.class);

	@RequestMapping(value = "/imgPage", method = RequestMethod.GET)
	public String detailPage(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		String orderId = request.getParameter("orderId");
		String lineType = request.getParameter("lineType");
		String imgPath = ImgUtils.getImgPath(user.getName(), orderId, lineType);
		if (imgPath != null) {
			request.setAttribute("imgPath", imgPath);
		}
		return "picture/img";
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String index(@RequestParam MultipartFile file, HttpServletRequest request) {
		if (!file.isEmpty()) {
			try {
				User user = (User) request.getSession().getAttribute("user");
				String picType = StringUtils.substringAfterLast(file.getOriginalFilename(), ".");
				String orderId = request.getParameter("orderId");
				String lineType = request.getParameter("lineType");
				String imgDir = request.getServletContext().getRealPath("") + "/resources/img";
				String imgPath = ImgUtils.getImgPath(user.getName(), orderId, lineType);
				// 删除原有文件
				if (imgPath != null) {
					new File(imgDir + "/" + imgPath).delete();
				}
				// 服务器上新建文件
				File newFile = new File(imgDir + "/" + user.getName() + "/" + orderId + "/" + lineType + "." + picType);
				FileUtils.copyInputStreamToFile(file.getInputStream(), newFile);
				imgPath = ImgUtils.getImgPath(user.getName(), orderId, lineType);
				if (imgPath != null) {
					request.setAttribute("imgPath", imgPath);
				}
			} catch (Exception e) {
				logger.error(e.getMessage(), e);
			}
		}
		return "picture/img";
	}

}
