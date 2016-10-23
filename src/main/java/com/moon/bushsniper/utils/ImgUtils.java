package com.moon.bushsniper.utils;

import java.io.File;

public class ImgUtils {

	private static String imgDir = null;

	public static String getImgPath(String userName, String orderId, String lineType) {
		String path = null;
		File imgFileDir = new File(imgDir + "/" + userName + "/" + orderId);
		if (imgFileDir.exists()) {
			File[] imgs = imgFileDir.listFiles();
			if (imgs != null && imgs.length > 0) {
				for (File img : imgs) {
					if (img.getName().contains(lineType)) {
						path = userName + "/" + orderId + "/" + img.getName();
						break;
					}
				}
			}
		}
		return path;
	}

	public static void setImgDir(String imgDir) {
		ImgUtils.imgDir = imgDir;
	}

	public static String getImgDir() {
		return imgDir;
	}

}
