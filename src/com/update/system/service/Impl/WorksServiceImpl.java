package com.update.system.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.update.entity.Works;
import com.update.framework.model.Page;
import com.update.framework.model.queryObject.WorksQueryObject;
import com.update.framework.persistence.IBaseDao;
import com.update.system.service.WorksService;

/**
 * 文章类型业务逻辑方法
 * @author cw
 *  @date 2016年6月14日 下午4:40:08
 */
@Service("worksServiceImpl")
public class WorksServiceImpl implements WorksService{

	
	@Resource
	private IBaseDao<Works> worksDao;

	@Override
	public Page selectWorksList(WorksQueryObject worksQueryObject) throws Exception {
		return worksDao.findQueryResult(worksQueryObject);
	}

}
