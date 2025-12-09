import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/AccountController.getAccounts';
export default class ListAccounts extends LightningElement {

    @wire(getAccounts)
    account;
}