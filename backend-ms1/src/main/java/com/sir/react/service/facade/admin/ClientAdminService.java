package com.sir.react.service.facade.admin;

import java.util.List;
import com.sir.react.bean.core.Client;
import com.sir.react.dao.criteria.core.ClientCriteria;
import com.sir.react.dao.criteria.history.ClientHistoryCriteria;
import com.sir.react.zynerator.service.IService;


public interface ClientAdminService extends  IService<Client,ClientCriteria, ClientHistoryCriteria>  {




}
