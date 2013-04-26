package com.tornado.util;

public class TextUtil
{
	public static String [] toHtmlString(String value)
	{
		String [] values = value.split(System.getProperty("line.separator"));
		return values;
	}
	
	public static String formatHtmlString(String value)
	{
		String result = value.replaceAll(" ", "&nbsp;");
		return result;
	}
	
	public static String formatSeparator(String value)
	{
		value = value.replaceAll("\n", System.getProperty("line.separator"));
		value = value.replaceAll("\r\n", System.getProperty("line.separator"));
		return value;
	}

}
