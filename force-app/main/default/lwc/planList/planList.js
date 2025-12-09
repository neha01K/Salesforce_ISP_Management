import { LightningElement, api, track } from 'lwc';

export default class PlanList extends LightningElement {
    @api plans = [];

    @track columns = [
        { label: 'Plan Name', fieldName: 'name' },
        { label: 'Start Date', fieldName: 'startDate', type: 'date' },
        { label: 'End Date', fieldName: 'endDate', type: 'date' },
        { label: 'Is Active', fieldName: 'isActive', type: 'boolean' }
    ];
}