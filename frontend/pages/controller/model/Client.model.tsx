import {BaseDto} from "/pages/zynerator/dto/BaseDto.model";

export class ClientDto extends BaseDto{


    public id: number;
    public fullName: string;
    public email: string;
    public present: boolean;

}
