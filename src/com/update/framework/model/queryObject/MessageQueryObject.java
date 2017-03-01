package com.update.framework.model.queryObject;

import org.springframework.util.StringUtils;

import com.update.entity.Message;
import com.update.framework.model.QueryObject;

public class MessageQueryObject extends QueryObject<Message>{

	private String name;
	
	public MessageQueryObject() {
		super(Message.class.getName());
	}

	public MessageQueryObject(Boolean pager) {
		super(Message.class.getName(),pager);
	}
	
	@Override
	protected void customerQuery() {
		if (StringUtils.hasText(name)) {
	        addWhere(" o.name = ? ",name);
        }
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
