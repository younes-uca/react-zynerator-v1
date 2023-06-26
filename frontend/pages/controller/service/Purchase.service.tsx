import axios, { AxiosResponse } from "axios";
import { API_URL } from '/layout/AppConfig';
import {BaseCriteria} from "/pages/zynerator/criteria/BaseCriteria.model";
import {PaginatedList} from "/pages/zynerator/dto/PaginatedList.model";
import {BaseDto} from "/pages/zynerator/dto/BaseDto.model";
import {PurchaseDto} from '/pages/controller/model/Purchase.model';
import {PurchaseCriteria} from "/pages/controller/criteria/PurchaseCriteria.model";



export const PurchaseService = {

   getList(): Promise<AxiosResponse<PurchaseDto[]>> {
     return axios.get(API_URL + 'purchase/');
   },

   save(item: PurchaseDto): Promise<AxiosResponse<PurchaseDto>> {
     return axios.post(API_URL + 'purchase/', item);
   },

   update(item: PurchaseDto): Promise<AxiosResponse<PurchaseDto>> {
      return axios.put(API_URL + 'purchase/', item);
   },

   delete(id: number): Promise<AxiosResponse<PurchaseDto>> {
      return axios.delete(API_URL + 'purchase/id/'+ id);
   },

   deleteList(items: PurchaseDto[]): Promise<AxiosResponse<string>> {
      return axios.post(API_URL + 'purchase/multiple', items);
   },

   findPaginatedByCriteria(criteria:PurchaseCriteria):Promise<AxiosResponse<PaginatedList<PurchaseDto>>> {
     return axios.post<PaginatedList<PurchaseDto>>(API_URL + `purchase/find-paginated-by-criteria`, criteria);
   }
};

