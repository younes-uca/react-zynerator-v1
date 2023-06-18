import {BaseCriteria} from '/pages/zynerator/criteria/BaseCriteria.model';





export class ProductCriteria  extends  BaseCriteria {


    public id: number;

    public code: string;
    public codeLike: string;
    public reference: string;
    public referenceLike: string;


}
