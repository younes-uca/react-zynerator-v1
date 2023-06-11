package  com.sir.react.ws.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.sir.react.zynerator.util.StringUtil;
import com.sir.react.zynerator.converter.AbstractConverter;
import com.sir.react.zynerator.util.DateUtil;
import com.sir.react.bean.history.ClientHistory;
import com.sir.react.bean.core.Client;
import com.sir.react.ws.dto.ClientDto;

@Component
public class ClientConverter extends AbstractConverter<Client, ClientDto, ClientHistory> {


    public  ClientConverter(){
        super(Client.class, ClientDto.class, ClientHistory.class);
    }

    @Override
    public Client toItem(ClientDto dto) {
        if (dto == null) {
            return null;
        } else {
        Client item = new Client();
            if(StringUtil.isNotEmpty(dto.getId()))
                item.setId(dto.getId());
            if(StringUtil.isNotEmpty(dto.getFullName()))
                item.setFullName(dto.getFullName());
            if(StringUtil.isNotEmpty(dto.getEmail()))
                item.setEmail(dto.getEmail());


        return item;
        }
    }

    @Override
    public ClientDto toDto(Client item) {
        if (item == null) {
            return null;
        } else {
            ClientDto dto = new ClientDto();
            if(StringUtil.isNotEmpty(item.getId()))
                dto.setId(item.getId());
            if(StringUtil.isNotEmpty(item.getFullName()))
                dto.setFullName(item.getFullName());
            if(StringUtil.isNotEmpty(item.getEmail()))
                dto.setEmail(item.getEmail());


        return dto;
        }
    }


    public void initObject(boolean value) {
    }


}
