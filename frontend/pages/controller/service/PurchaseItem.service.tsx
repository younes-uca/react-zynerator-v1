import axios, { AxiosResponse } from "axios";
import { API_URL } from '/layout/AppConfig';
import {BaseCriteria} from "/pages/zynerator/criteria/BaseCriteria.model";
import {PaginatedList} from "/pages/zynerator/dto/PaginatedList.model";
import {BaseDto} from "/pages/zynerator/dto/BaseDto.model";
import {PurchaseItemDto} from '/pages/controller/model/PurchaseItem.model';



export const PurchaseItemService = {

   getList(): Promise<AxiosResponse<PurchaseItem[]>> {
     return axios.get(API_URL + 'purchaseItem/');
   },

   save(item: PurchaseItem): Promise<AxiosResponse<PurchaseItem>> {
     return axios.post(API_URL + 'purchaseItem/', item);
   },

   update(item: PurchaseItem): Promise<AxiosResponse<PurchaseItem>> {
      return axios.put(API_URL + 'purchaseItem/', item);
   },

   delete(id: number): Promise<AxiosResponse<PurchaseItem>> {
      return axios.delete(API_URL + 'purchaseItem/id/${id}');
   },

   deleteList(items: PurchaseItem[]): Promise<AxiosResponse<string>> {
      return axios.post(API_URL + 'purchaseItem/multiple', items);
   },

   findPaginatedByCriteria(criteria: BaseCriteria):Promise<AxiosResponse<PaginatedList<BaseDto>>> {
     return axios.post<PaginatedList<BaseDto>>(API_URL + `purchaseItem/find-paginated-by-criteria`, criteria);
   }
};

