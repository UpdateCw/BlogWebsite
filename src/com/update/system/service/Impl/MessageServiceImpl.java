package com.update.system.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.update.entity.Message;
import com.update.framework.model.Page;
import com.update.framework.model.queryObject.MessageQueryObject;
import com.update.framework.persistence.IBaseDao;
import com.update.system.service.MessageService;

/**
 * 文章类型业务逻辑方法
 * @author cw
 *  @date 2016年6月14日 下午4:40:08
 */
@Service("messageServiceImpl")
public class MessageServiceImpl implements MessageService{

	
	@Resource
	private IBaseDao<Message> MessageDao;

	@Override
	public Page selectMessageList(MessageQueryObject MessageQueryObject) throws Exception {
		return MessageDao.findQueryResult(MessageQueryObject);
	}

}
