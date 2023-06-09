import {BaseDto} from "/pages/zynerator/dto/BaseDto.model";
import {PurchaseItemDto} from 'pages/controller/model/PurchaseItem.model';
import {ClientDto} from 'pages/controller/model/Client.model';

export class PurchaseDto extends BaseDto{


    public id: number;
    public reference: string;
   public purchaseDate: Date;
    public image: string;
    public total: number;
    public description: string;
    public purchaseDateMax: string ;
    public purchaseDateMin: string ;
    public totalMax: string ;
    public totalMin: string ;
    public client: ClientDto ;
     public purchaseItems: Array<PurchaseItemDto>;

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
