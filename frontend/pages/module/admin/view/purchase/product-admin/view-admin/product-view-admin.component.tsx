import {Button} from 'primereact/button';
import {Column} from 'primereact/column';
import { TabView, TabPanel } from 'primereact/tabview';
import {DataTable} from 'primereact/datatable';
import {Dialog} from 'primereact/dialog';
import {InputNumber} from 'primereact/inputnumber';
import {InputText} from 'primereact/inputtext';
import React, {useEffect, useState} from 'react';

import  {ProductDto}  from '/pages/controller/model/Product.model';

const View = ({visible,onClose,selectedItem}) => {

    const emptyItem = new ProductDto();
    const [item, setItem] = useState<ProductDto>(emptyItem);
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
<Dialog visible={visible} style={{width: '70vw'}} header="Product Details" modal className="p-fluid" footer={itemDialogFooter} onHide={hideDialog} >
<TabView activeIndex={activeIndex} onTabChange={onTabChange}>
<TabPanel header="Product">
    <div className="formgrid grid">

            <div className="field col-6">
                <label htmlFor="code">Code</label>
                <InputText id="code" value={item.code} disabled required autoFocus className={classNames({'p-invalid': submitted && !item.code})} />
                {submitted && !item.code && <small className="p-invalid">Code is required.</small>}
            </div>

            <div className="field col-6">
                <label htmlFor="reference">Reference</label>
                <InputText id="reference" value={item.reference} disabled required autoFocus className={classNames({'p-invalid': submitted && !item.reference})} />
                {submitted && !item.reference && <small className="p-invalid">Reference is required.</small>}
            </div>

        </div>
</TabPanel>
</TabView>
</Dialog>
);
};
export default View;