package ma.sir.walo.service.facade.admin;

import java.util.List;
import ma.sir.walo.bean.core.Client;
import ma.sir.walo.dao.criteria.core.ClientCriteria;
import ma.sir.walo.dao.criteria.history.ClientHistoryCriteria;
import ma.sir.walo.zynerator.service.IService;


public interface ClientAdminService extends  IService<Client,ClientCriteria, ClientHistoryCriteria>  {




}
