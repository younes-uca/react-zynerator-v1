import { InputTextarea } from 'primereact/inputtextarea';
import {AxiosResponse} from 'axios';
import React, {useEffect, useState} from 'react';
import {Calendar, CalendarChangeEvent} from 'primereact/calendar';
import { format } from 'date-fns';
import {InputNumberChangeEvent} from 'primereact/inputnumber';
import { InputSwitch } from "primereact/inputswitch";
import {MultiSelect} from "primereact/multiselect";

import {MessageService} from "/pages/controller/service/MessageService";

import {ClientService} from '/pages/controller/service/Client.service';

import  {ClientDto}  from '/pages/controller/model/Client.model';

const Edit = ({visible, onClose, showToast, selectedItem, update}) => {

    const emptyItem = new ClientDto();

      const [submitted, setSubmitted] = useState(false);
      const [activeIndex, setActiveIndex] = useState<number>(0);
      const [activeTab, setActiveTab] = useState(0);
      const [item, setItem] = useState<ClientDto>(selectedItem || emptyItem);



       useEffect(() => {
        const fetchData = async () => {
         try {
          // if pojo = Commande this line must dispolay client (in command), product(in commanandItem)
          const [] = await Promise.all<>([
            ]);

            } catch (error) {
           console.error(error);
         }
          };

          fetchData();
           }, []);

        useEffect(() => {
              setItem(selectedItem ? { ...selectedItem } : { ...emptyItem });

          }, [selectedItem]);

        const onDropdownChange = (e, field) => {
               setItem((prevState) => ({
                       ...prevState,
               [field]: e.value,
                }));
           };


          const onTabChange = (e: { index: number }) => {
                  setActiveIndex(e.index);
          };

         const hideDialog = () => {
                     setSubmitted(false);
                     onClose();
             };

      const saveItem = async () => {
            setSubmitted(true);
            let _item = {...item};
             try {
                 if (_item.id) {
                 await ClientService.update(_item).then((response) => {
                     console.log(response.data);
                     update(response.data);
                     onClose();
                     })

                 MessageService.showToast(showToast, { severity: 'success', summary: 'Successful', detail: 'Client Updated', life: 3000 });

                 }
                  } catch (error) {
                  console.log(error);
                  MessageService.showToast(showToast, { severity: 'Error', summary: 'Error', detail: 'Failed to save client', life: 3000 });

                        }
                    };


             const itemDialogFooter = (
                     <>
                             <Button label="Cancel" icon="pi pi-times" text onClick={hideDialog}/>
                             <Button label="Save" icon="pi pi-check" text onClick={saveItem}/>
                     </>
                 );

    return(
    <Dialog visible={visible} style={{width: '70vw'}} header="Client" modal className="p-fluid" footer={itemDialogFooter} onHide={hideDialog}>
    <TabView activeIndex={activeIndex} onTabChange={onTabChange}>
    <TabPanel header="Client">
        <div className="formgrid grid">

                <div className="field col-6">
                    <label htmlFor="fullName">FullName</label>
                    <InputText id="fullName" value={item ? item.fullName : ''} onChange={(e) => onInputTextChange(e, 'fullName')} required autoFocus
                    className={classNames({'p-invalid': submitted && !item.fullName})}/>
                    {submitted && !item.fullName &&
                    <small className="p-invalid">FullName is required.</small>}
                </div>



                <div className="field col-6">
                    <label htmlFor="email">Email</label>
                    <InputText id="email" value={item ? item.email : ''} onChange={(e) => onInputTextChange(e, 'email')} required autoFocus
                    className={classNames({'p-invalid': submitted && !item.email})}/>
                    {submitted && !item.email &&
                    <small className="p-invalid">Email is required.</small>}
                </div>



            </div>
    </TabPanel>

    </TabView>

    </Dialog>


    );

    };
export default Edit;


