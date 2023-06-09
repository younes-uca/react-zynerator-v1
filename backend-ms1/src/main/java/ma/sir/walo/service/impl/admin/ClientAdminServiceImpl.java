package ma.sir.walo.service.impl.admin;

import ma.sir.walo.bean.core.Client;
import ma.sir.walo.bean.history.ClientHistory;
import ma.sir.walo.dao.criteria.core.ClientCriteria;
import ma.sir.walo.dao.criteria.history.ClientHistoryCriteria;
import ma.sir.walo.dao.facade.core.ClientDao;
import ma.sir.walo.dao.facade.history.ClientHistoryDao;
import ma.sir.walo.dao.specification.core.ClientSpecification;
import ma.sir.walo.service.facade.admin.ClientAdminService;
import ma.sir.walo.zynerator.service.AbstractServiceImpl;
import ma.sir.walo.zynerator.util.ListUtil;
import org.springframework.stereotype.Service;
import java.util.List;






import java.util.List;
@Service
public class ClientAdminServiceImpl extends AbstractServiceImpl<Client,ClientHistory, ClientCriteria, ClientHistoryCriteria, ClientDao,
ClientHistoryDao> implements ClientAdminService {



    public Client findByReferenceEntity(Client t){
        return  dao.findByEmail(t.getEmail());
    }





    public void configure() {
        super.configure(Client.class,ClientHistory.class, ClientHistoryCriteria.class, ClientSpecification.class);
    }


    public ClientAdminServiceImpl(ClientDao dao, ClientHistoryDao historyDao) {
        super(dao, historyDao);
    }

}