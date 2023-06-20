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

    const itemDialogFooter = (
        <>
            <Button label="Cancel" icon="pi pi-times" text onClick={hideDialog}/>

        </>
    );
    return (
        <Dialog visible={visible} style={{width: '70vw'}} header="Purchase Details" modal className="p-fluid" footer={itemDialogFooter} onHide={hideDialog}>
            <TabView activeIndex={activeIndex} onTabChange={onTabChange}>
                <TabPanel header="Purchase">
                    <div className="formgrid grid">
                        <div className="field col">
                            <label htmlFor="reference">Reference</label>
                            <InputText id="reference" value={selectedItem?.reference} disabled/>
                        </div>
                        <div className="field col">
                            <label htmlFor="dateCommande">Date Commande</label>
                            <InputText type="datetime" id="dateCommande" value={selectedItem?.dateCommande} required rows={3} cols={20}  disabled/>
                        </div>
                    </div>
                    <div className="formgrid grid">
                        <div className="field col">
                            <label htmlFor="total">Total</label>
                            <InputNumber id="total" value={selectedItem?.total}  disabled/>
                        </div>
                        <div className="field col">
                            <label htmlFor="totalePaye">TotalePaye</label>
                            <InputNumber id="totalePaye" value={selectedItem?.totalePaye}  disabled/>
                        </div>
                    </div>
                    <div className="p-fluid">
                        <label htmlFor="client">Client</label>
                        <InputNumber id="client" value={selectedItem?.client?.id}  disabled/>
                    </div>
                </TabPanel>
                <TabPanel header="CommandeItems">
                            <div className="card">
                                <DataTable value={selectedItem?.commandeItems} tableStyle={{ minWidth: '50rem' }} dataKey="id" >
                                    <Column field="produit.id" header="Produit"></Column>
                                    <Column field="prix" header="Prix"></Column>
                                    <Column field="quantite" header="Quantite"></Column>
                                </DataTable>
                            </div>
                        </TabPanel>
                    </TabView>
        </Dialog>
    );
};
export default View;