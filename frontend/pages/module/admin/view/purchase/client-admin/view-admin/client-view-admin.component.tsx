import {Button} from 'primereact/button';
import {Column} from 'primereact/column';
import { TabView, TabPanel } from 'primereact/tabview';
import {DataTable} from 'primereact/datatable';
import {Dialog} from 'primereact/dialog';
import {InputNumber} from 'primereact/inputnumber';
import {InputText} from 'primereact/inputtext';
import React, {useEffect, useState} from 'react';

import  {ClientDto}  from '/pages/controller/model/Client.model';

const View = ({visible,onClose,selectedItem}) => {

    const emptyItem = new ClientDto();
    const [item, setItem] = useState<ClientDto>(emptyItem);
    const [submitted, setSubmitted] = useState(false);
    const [activeIndex, setActiveIndex] = useState<number>(0);

    useEffect(() => {
        setItem(selectedItem ? { ...selectedItem } : { ...emptyItem });
    }, [selectedItem]);

    const onTabChange = (e: { index: number }) => {
        setActiveIndex(e.index);
    };

    const hideDialog = () => {
        setSubmitted(false);
        onClose();
    };

    const itemDialogFooter = ( <>
        <Button label="Cancel" icon="pi pi-times" text onClick={hideDialog} /> < />
    );

return(
<Dialog visible={visible} style={{width: '70vw'}} header="Client Details" modal className="p-fluid" footer={itemDialogFooter} onHide={hideDialog} >
<TabView activeIndex={activeIndex} onTabChange={onTabChange}>
<TabPanel header="Client">
    <div className="formgrid grid">

            <div className="field col-6">
                <label htmlFor="fullName">FullName</label>
                <InputText id="fullName" value={item.fullName} disabled required autoFocus className={classNames({'p-invalid': submitted && !item.fullName})} />
                {submitted && !item.fullName && <small className="p-invalid">FullName is required.</small>}
            </div>

            <div className="field col-6">
                <label htmlFor="email">Email</label>
                <InputText id="email" value={item.email} disabled required autoFocus className={classNames({'p-invalid': submitted && !item.email})} />
                {submitted && !item.email && <small className="p-invalid">Email is required.</small>}
            </div>

        </div>
</TabPanel>
</TabView>
</Dialog>
);
};
export default View;