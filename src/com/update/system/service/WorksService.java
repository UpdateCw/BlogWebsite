package com.update.system.service;

import com.update.framework.model.Page;
import com.update.framework.model.queryObject.WorksQueryObject;


/**
 * 作品业务逻辑接口
 * @author cw
 *  @date 2016年6月14日 下午4:37:26
 */
public interface WorksService {

	Page selectWorksList(WorksQueryObject worksQueryObject) throws Exception;
}
