package com.update.framework.model.queryObject;

import java.util.Date;

import org.springframework.util.StringUtils;

import com.update.entity.Article;
import com.update.framework.model.QueryObject;

public class ArticleQueryObject extends QueryObject<Article>{
	private String title;
	private String label;
	private long type;
	private Date dateString;

	public ArticleQueryObject() {
		super(Article.class.getName());
	}

	public ArticleQueryObject(Boolean pager) {
		super(Article.class.getName(),pager);
	}
	
	@Override
	protected void customerQuery() {
		 if (StringUtils.hasText(title)) {
	        addWhere(" o.title = ? ",title);
        }
        if (StringUtils.hasText(label)) {
            addWhere("o.label = ? ",label);
        }
        if (type!=0) {
            addWhere("o.type.id = ? ",type);
        }
        
    	if (dateString!=null) {
    		addWhere("o.createDate>=? and  o.createDate <=now() ", dateString);
		} 
    	
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public long getType() {
		return type;
	}

	public void setType(long type) {
		this.type = type;
	}

	public Date getDateString() {
		return dateString;
	}

	public void setDateString(Date dateString) {
		this.dateString = dateString;
	}


	
}
