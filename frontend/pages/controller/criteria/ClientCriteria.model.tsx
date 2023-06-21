import {BaseCriteria} from '/pages/zynerator/criteria/BaseCriteria.model';





export class ClientCriteria  extends  BaseCriteria {


    public id: number;

    public fullName: string;
    public fullNameLike: string;
    public email: string;
    public emailLike: string;


}
