package ma.sir.walo.dao.facade.core;

import org.springframework.data.jpa.repository.Query;
import ma.sir.walo.zynerator.repository.AbstractRepository;
import ma.sir.walo.bean.core.Client;
import org.springframework.stereotype.Repository;
import ma.sir.walo.bean.core.Client;
import java.util.List;


@Repository
public interface ClientDao extends AbstractRepository<Client,Long>  {
    Client findByEmail(String email);
    int deleteByEmail(String email);


    @Query("SELECT NEW Client(item.id,item.fullName) FROM Client item")
    List<Client> findAllOptimized();
}
