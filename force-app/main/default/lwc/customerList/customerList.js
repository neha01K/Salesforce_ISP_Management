import { LightningElement, api, track } from 'lwc';

export default class CustomerList extends LightningElement {
    @api customers = [];

    @track columns = [
        { label: 'Name', fieldName: 'name' },
        { label: 'Phone', fieldName: 'phone' },
        { label: 'Account Number', fieldName: 'accountNumber' },
        {
            type: 'button',
            typeAttributes: {
                label: 'View Plans',
                name: 'view_plans',
                variant: 'brand'
            }
        }
    ];

    handleRowAction(event) {
        const row = event.detail.row;

        if (event.detail.action.name === 'view_plans') {
            this.dispatchEvent(
                new CustomEvent('customerselected', {
                    detail: row.id,
                    bubbles: true,
                    composed: true
                })
            );
        }
    }
}