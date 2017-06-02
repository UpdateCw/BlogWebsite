/**
 * 
 */
package com.update.framework.until;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;
import java.util.TimeZone;

import org.springframework.core.io.ClassPathResource;

/**
 * @author cw
 * @date 2017年6月1日
 * @vsersion 1.0
 */
public final class DateUtil {
	public static final String dateFormat = "yyyy-MM-dd HH:mm:ss";

	public static final String CONFURL = "/config/launcher.properties";

	private DateUtil() {

	}

	/**
	 * 得到配置文件指定内容
	 */
	public static String getConfigValue(String key) {
		Properties config = new Properties();
		InputStream in = null;
		try {
			config.load(new ClassPathResource(CONFURL).getInputStream());
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (in != null) {
				try {
					in.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return config.getProperty(key.trim());
	}

	private static DateUtil dateUtil;

	public synchronized static DateUtil getDate() {
		if (dateUtil == null) {
			dateUtil = new DateUtil();
		}
		return dateUtil;
	}


	public static SimpleDateFormat formatDate(String formatDate) {
		SimpleDateFormat SimpleDateFormat = new SimpleDateFormat(formatDate);
		TimeZone timeZoneChina = TimeZone.getTimeZone("Asia/Shanghai");// 获取中国的时区
		SimpleDateFormat.setTimeZone(timeZoneChina);// 设置系统时区
		return SimpleDateFormat;
	}

	/**
	 * 日期前后加减
	 * 
	 * @param date
	 * @param num
	 * @return
	 */
	public static Date calculateDate(Date date, int num) {
		long time = date.getTime() + num * 24 * 60 * 60 * 1000;
		Date d = new Date(time);
		return d;
	}
}
