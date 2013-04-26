package com.tornado.controller;

import java.util.Date;

import com.tornado.core.control.Content;
import com.tornado.core.control.Controller;
import com.tornado.core.view.View;
import com.tornado.entity.Message;
import com.tornado.persistence.PMF;
import com.tornado.util.SystemConfig;

public class MessageController extends Controller
{
	public View leaveSuggestionMessage(Content content) throws Exception
	{
		return leaveMessage(content,SystemConfig.message_type_suggestion);
	}
	
	public View leavePraiseMessage(Content content) throws Exception
	{
		return leaveMessage(content,SystemConfig.message_type_praise);
	}
	
	public View leaveMessage(Content content,int type) throws Exception
	{
		/* 解决中文乱码问题 */
		String author=null,email = null,contentStr=null;
		
		if(content.getParameter("author")!=null)
			author = new String(content.getParameter("author").getBytes("ISO-8859-1"), "utf8");
		if(content.getParameter("email")!=null)
			email = new String(content.getParameter("email").getBytes("ISO-8859-1"), "utf8");
		if(content.getParameter("content")!=null)
			contentStr = new String(content.getParameter("content").getBytes("ISO-8859-1"), "utf8");
		
		Message message = new Message();
		message.setAuthor(author);
		message.setContent(contentStr);
		message.setDate(new Date());
		message.setType(type);
		PMF.save(message);
		View view = new View("");
		return view;
	}

}
