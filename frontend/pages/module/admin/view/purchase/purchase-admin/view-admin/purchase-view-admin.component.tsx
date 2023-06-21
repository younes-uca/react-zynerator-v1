import {Button} from 'primereact/button';
import {Column} from 'primereact/column';
import { TabView, TabPanel } from 'primereact/tabview';
import {DataTable} from 'primereact/datatable';
import {Dialog} from 'primereact/dialog';
import {InputNumber} from 'primereact/inputnumber';
import {InputText} from 'primereact/inputtext';
import React, {useEffect, useState} from 'react';

import  {PurchaseDto}  from '/pages/controller/model/Purchase.model';

const View = ({visible,onClose,selectedItem}) => {

    const emptyItem = new PurchaseDto();
    const [item, setItem] = useState<PurchaseDto>(emptyItem);
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
<Dialog visible={visible} style={{width: '70vw'}} header="Purchase Details" modal className="p-fluid" footer={itemDialogFooter} onHide={hideDialog} >
<TabView activeIndex={activeIndex} onTabChange={onTabChange}>
<TabPanel header="Purchase">
    <div className="formgrid grid">

            <div className="field col-6">
                <label htmlFor="reference">Reference</label>
                <InputText id="reference" value={item.reference} disabled required autoFocus className={classNames({'p-invalid': submitted && !item.reference})} />
                {submitted && !item.reference && <small className="p-invalid">Reference is required.</small>}
            </div>

        <div className="field col-6">
            <label htmlFor="purchaseDate">PurchaseDate</label>
            <Calendar id="purchaseDate" value={item.purchaseDate} disabled dateFormat="dd/mm/yy" showTime />
        </div>

            <div className="field col-6">
                <label htmlFor="image">Image</label>
                <InputText id="image" value={item.image} disabled required autoFocus className={classNames({'p-invalid': submitted && !item.image})} />
                {submitted && !item.image && <small className="p-invalid">Image is required.</small>}
            </div>

                <div className="field col-6">
                    <label htmlFor="total">Total</label>
                    <InputNumber id="total" value={item.total} disabled/>
                </div>

            <div className="field col-6">
                <label htmlFor="description">Description</label>
                <span className="p-float-label">
               <InputTextarea id="description" value={item.description} disabled rows={5} cols={30} />
                </span>
            </div>

                <div className="field col-6">
                    <label htmlFor="client">Client</label>
                    <Dropdown  id="clientDropdown"  value={item.client} options={clients} disabled  placeholder="Sélectionnez un client" filter filterPlaceholder="Rechercher un client" optionLabel="fullName" />
                </div>
        </div>
</TabPanel>
    <TabPanel header="purchaseItems">
                <div className="card">
                    <DataTable value={purchaseItems} tableStyle={{minWidth: '50rem'}} dataKey="id">
                                <Column field="product.reference" header="Product"></Column>
                                <Column field="price" header="Price"></Column>
                                <Column field="quantity" header="Quantity"></Column>
                    </DataTable>
                </div>
        </TabPanel>
</TabView>
</Dialog>
);
};
export default View;