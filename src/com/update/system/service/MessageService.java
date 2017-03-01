package com.update.system.service;

import com.update.framework.model.Page;
import com.update.framework.model.queryObject.MessageQueryObject;


/**
 * 消息业务逻辑接口
 * @author cw
 *  @date 2016年6月14日 下午4:37:26
 */
public interface MessageService {

	Page selectMessageList(MessageQueryObject messageQueryObject) throws Exception;
}
