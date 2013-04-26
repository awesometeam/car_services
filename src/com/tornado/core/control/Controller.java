package com.tornado.core.control;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;

import com.tornado.core.view.View;

public class Controller
{
	public static final String language = "lan";
	
	public View execute(String methodName,Content data) throws SecurityException, NoSuchMethodException, IllegalArgumentException, IllegalAccessException, InvocationTargetException
	{
		Method method = this.getClass().getMethod(methodName, Content.class);
		return (View)method.invoke(this,data);
	}
	
	public String getLanguage(Content data)
	{
		if(data.getRequest().getSession().getAttribute(language) == null)
			return "en";
		
		return data.getRequest().getSession().getAttribute(language).toString();
		
	}
	
	protected void switchLanguage(Content content,String lan)
	{
		content.getRequest().getSession().setAttribute(language, lan);
	}
}
