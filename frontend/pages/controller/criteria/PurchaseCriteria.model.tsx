import {BaseCriteria} from 'src/app/zynerator/criteria/BaseCriteria.model';

import {PurchaseItemCriteria} from 'PurchaseItemCriteria.model';
import {ClientCriteria} from 'ClientCriteria.model';




export class PurchaseCriteria  extends  BaseCriteria {


    public id: number;

    public reference: string;
    public referenceLike: string;
    public purchaseDate: Date;
    public purchaseDateFrom: Date;
    public purchaseDateTo: Date;
    public image: string;
    public imageLike: string;
     public total: number;
     public totalMin: number;
     public totalMax: number;
    public description: string;
    public descriptionLike: string;
  public client: ClientCriteria ;
  public clients: Array<ClientCriteria> ;
      public purchaseItems: Array<PurchaseItemCriteria>;
 constructor(
   public id: number = 0,
   public reference: string = '',
   public purchaseDate: Date = new Date(),
   public image: string = '',
   public total: number = 0,
   public description: string = '',
   public purchaseDateMax: string = '',
   public purchaseDateMin: string = '',
   public totalMax: string = '',
   public totalMin: string = '',
   public client: ClientDto = new ClientDto(),
   public purchaseItems: Array<PurchaseItemDto> = [],
 ) {
   super();
 }

}
