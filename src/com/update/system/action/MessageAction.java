package com.update.system.action;

import java.util.logging.Logger;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.update.entity.Message;
import com.update.framework.action.BaseAction;
import com.update.framework.model.queryObject.MessageQueryObject;
import com.update.system.service.MessageService;

/**
 * @author cw
 * @date 2016年6月12日 下午2:01:21
 * action
 */
@Namespace(value = "/message")
@Results({
		@Result(name="message",location="/pages/message.jsp")
		})
public class MessageAction extends BaseAction {
    private Logger logger=Logger.getLogger(this.getClass().getName()); 
	
	private static final long serialVersionUID = 7675610277124547364L;
	
	private MessageQueryObject messageQueryObject;
	
	@Resource
	private MessageService messageService;
	
	private Message message;

	@Action("selectMessage")
	public String selectmessage() throws Exception{
		String pageNo=getRequest().getParameter("pageNo");
		int pn=1;
		if(pageNo!=null&&!"".equals(pageNo)){
			pn=Integer.parseInt(pageNo);
		}
		
		if(messageQueryObject==null){
			messageQueryObject=new MessageQueryObject();
			messageQueryObject.setCurrentPageNo(pn);
		}
		page=messageService.selectMessageList(messageQueryObject);
		return "message";
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}
	
}

	
