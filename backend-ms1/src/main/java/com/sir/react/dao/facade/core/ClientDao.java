package com.sir.react.dao.facade.core;

import org.springframework.data.jpa.repository.Query;
import com.sir.react.zynerator.repository.AbstractRepository;
import com.sir.react.bean.core.Client;
import org.springframework.stereotype.Repository;
import com.sir.react.bean.core.Client;
import java.util.List;


@Repository
public interface ClientDao extends AbstractRepository<Client,Long>  {
    Client findByEmail(String email);
    int deleteByEmail(String email);


    @Query("SELECT NEW Client(item.id,item.fullName) FROM Client item")
    List<Client> findAllOptimized();
}
