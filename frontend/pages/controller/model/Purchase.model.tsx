import {BaseDto} from "/pages/zynerator/dto/BaseDto.model";
import {PurchaseItemDto} from 'pages/controller/model/PurchaseItem.model';
import {ClientDto} from 'pages/controller/model/Client.model';

export class PurchaseDto extends BaseDto{


    public id: number;
    public reference: string;
    public image: string;
    public total: number;
    public description: string;
    public client: ClientDto ;
     public purchaseItems: PurchaseItemDto[];






}
