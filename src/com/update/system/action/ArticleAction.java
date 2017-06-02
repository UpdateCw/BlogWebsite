package com.update.system.action;

import java.util.Date;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.update.entity.Article;
import com.update.framework.action.BaseAction;
import com.update.framework.model.Page;
import com.update.framework.model.queryObject.ArticleQueryObject;
import com.update.framework.until.DateUtil;
import com.update.system.service.ArticleService;
import com.update.system.service.TypeService;

/**
 * @author cw
 * @date 2016年6月12日 下午2:01:21 文章action
 */
@Namespace(value = "/article")
@Results({ @Result(name = "isMain", location = "/pages/index.jsp"), @Result(name = "article", location = "/pages/blog.jsp"),
		@Result(name = "content", location = "/pages/content.jsp"), @Result(name = "json", type = "json", params = { "root", "result" }) })
public class ArticleAction extends BaseAction {
	private static final long serialVersionUID = 7675610277124547364L;
	public static final String JSON = "json";
	private ArticleQueryObject articleQueryObject;

	@Resource
	private ArticleService articleService;
	@Resource
	private TypeService typeService;
	private long id;

	private Article article;

	@Action("selectArticle")
	public String selectArticle() throws Exception {
		articeAll(id,false);
		if(id!=0){
			getRequest().setAttribute("typeName", typeService.selectTypeById(id).getName());
		}
		return "article";
	}

	@Action("selectOne")
	public String selectOne() throws Exception {
		Article article = articleService.selectGetOne(id);
		getRequest().setAttribute("article", article);
		return "content";
	}

	@Action("index")
	public String index() throws Exception {
		articeAll(id,true);
		return "isMain";
	}

	@Action("pagingData")
	public String pagingData() throws Exception {
		result.setData(articeAll(id,false).getData());
		return JSON;
	}

	@SuppressWarnings("rawtypes")
	/**
	 * @param b 是否是首页
	 */
	public Page articeAll(long id, boolean b) throws Exception {
		String pageNo = getRequest().getParameter("pageNo");
		if (pageNo != null && !"".equals(pageNo)) {
			pn = Integer.parseInt(pageNo);
		}

		if (articleQueryObject == null) {
			articleQueryObject = new ArticleQueryObject();
			articleQueryObject.setCurrentPageNo(pn);
			articleQueryObject.setType(id);
			if(b){
				articleQueryObject.setDateString(DateUtil.calculateDate(new Date(), -8));
			}
		}
		return page = articleService.selectArticleList(articleQueryObject);
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}
}
