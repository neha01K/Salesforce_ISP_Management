import { LightningElement } from 'lwc';
import getAccountByType from '@salesforce/apex/AccountController.getAccountByType';

export default class AccountListTypeWise extends LightningElement {
    accounts = [];
    error;

    handleClick() {
        getAccountsByType({ typeValue: 'Customer' })
            .then(result => {
                this.accounts = result;
                this.error = undefined;
            })
            .catch(error => {
                this.error = error;
                this.accounts = [];
            });
    }
}