package com.update.system.service;

import com.update.framework.model.Page;
import com.update.framework.model.queryObject.ArticleQueryObject;


/**
 * 文章业务逻辑接口
 * @author cw
 *  @date 2016年6月14日 下午4:37:26
 */
public interface ArticleService {

	Page selectArticleList(ArticleQueryObject articleQueryObject) throws Exception;
}
