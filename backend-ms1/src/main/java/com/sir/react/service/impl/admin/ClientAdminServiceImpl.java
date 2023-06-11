package com.sir.react.service.impl.admin;

import com.sir.react.bean.core.Client;
import com.sir.react.bean.history.ClientHistory;
import com.sir.react.dao.criteria.core.ClientCriteria;
import com.sir.react.dao.criteria.history.ClientHistoryCriteria;
import com.sir.react.dao.facade.core.ClientDao;
import com.sir.react.dao.facade.history.ClientHistoryDao;
import com.sir.react.dao.specification.core.ClientSpecification;
import com.sir.react.service.facade.admin.ClientAdminService;
import com.sir.react.zynerator.service.AbstractServiceImpl;
import com.sir.react.zynerator.util.ListUtil;
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