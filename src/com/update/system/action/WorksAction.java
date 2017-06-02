package com.update.system.action;

import java.util.logging.Logger;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.update.entity.Works;
import com.update.framework.action.BaseAction;
import com.update.framework.model.queryObject.WorksQueryObject;
import com.update.system.service.WorksService;

/**
 * @author cw
 * @date 2016年6月12日 下午2:01:21 作品action
 */
@Namespace(value = "/works")
@Results({ @Result(name = "works", location = "/pages/works.jsp") })
public class WorksAction extends BaseAction {
	private Logger logger = Logger.getLogger(this.getClass().getName());

	private static final long serialVersionUID = 7675610277124547364L;

	private WorksQueryObject worksQueryObject;

	@Resource
	private WorksService worksService;

	private Works works;

	@Action("selectWorks")
	public String selectworks() throws Exception {
		String pageNo = getRequest().getParameter("pageNo");
		if (pageNo != null && !"".equals(pageNo)) {
			pn = Integer.parseInt(pageNo);
		}

		if (worksQueryObject == null) {
			worksQueryObject = new WorksQueryObject();
			worksQueryObject.setCurrentPageNo(pn);
		}
		page = worksService.selectWorksList(worksQueryObject);
		logger.info("Get work information..");
		return "works";
	}

	public Works getWorks() {
		return works;
	}

	public void setWorks(Works works) {
		this.works = works;
	}

}
