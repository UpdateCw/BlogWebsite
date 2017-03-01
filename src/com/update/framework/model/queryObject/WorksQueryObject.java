package com.update.framework.model.queryObject;

import com.update.entity.Works;
import com.update.framework.model.QueryObject;

public class WorksQueryObject extends QueryObject<Works>{

	public WorksQueryObject() {
		super(Works.class.getName());
	}

	public WorksQueryObject(Boolean pager) {
		super(Works.class.getName(),pager);
	}
	
	@Override
	protected void customerQuery() {
		/* if (StringUtils.hasText(name)) {
	        addWhere(" o.name = ? ",name);
        }*/
	}


	
}
