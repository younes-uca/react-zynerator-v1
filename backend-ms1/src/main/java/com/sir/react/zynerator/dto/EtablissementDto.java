package com.sir.react.zynerator.dto;

import com.sir.react.zynerator.audit.Log;
import com.sir.react.zynerator.dto.AuditBaseDto;
import com.fasterxml.jackson.annotation.JsonInclude;



@JsonInclude(JsonInclude.Include.NON_NULL)
public class EtablissementDto  extends AuditBaseDto {

    private String libelle  ;
    private String code  ;

    public EtablissementDto(){
        super();
    }

    @Log
    public String getLibelle(){
        return this.libelle;
    }
    public void setLibelle(String libelle){
        this.libelle = libelle;
    }

    @Log
    public String getCode(){
        return this.code;
    }
    public void setCode(String code){
        this.code = code;
    }

}
