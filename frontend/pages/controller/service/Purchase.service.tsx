import axios, { AxiosResponse } from "axios";
import { API_URL } from '/layout/AppConfig';
import {BaseCriteria} from "/pages/zynerator/criteria/BaseCriteria.model";
import {PaginatedList} from "/pages/zynerator/dto/PaginatedList.model";
import {BaseDto} from "/pages/zynerator/dto/BaseDto.model";
import {PurchaseDto} from '/pages/controller/model/Purchase.model';



export const PurchaseService = {

   getList(): Promise<AxiosResponse<Purchase[]>> {
     return axios.get(API_URL + 'purchase/');
   },

   save(item: Purchase): Promise<AxiosResponse<Purchase>> {
     return axios.post(API_URL + 'purchase/', item);
   },

   update(item: Purchase): Promise<AxiosResponse<Purchase>> {
      return axios.put(API_URL + 'purchase/', item);
   },

   delete(id: number): Promise<AxiosResponse<Purchase>> {
      return axios.delete(API_URL + 'purchase/id/${id}');
   },

   deleteList(items: Purchase[]): Promise<AxiosResponse<string>> {
      return axios.post(API_URL + 'purchase/multiple', items);
   },

   findPaginatedByCriteria(criteria: BaseCriteria):Promise<AxiosResponse<PaginatedList<BaseDto>>> {
     return axios.post<PaginatedList<BaseDto>>(API_URL + `purchase/find-paginated-by-criteria`, criteria);
   }
};

