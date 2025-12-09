import { LightningElement } from 'lwc';
import USER_ID from '@salesforce/user/Id';
import FORM_FACTOR from '@salesforce/client/formFactor'
import USER_LANG from '@salesforce/i18n/lang';
import USER_LOCALE from '@salesforce/i18n/locale';

export default class SlotParentComponent extends LightningElement {

  
}
console.log("User Info: "+ USER_ID, FORM_FACTOR, USER_LANG, USER_LOCALE);