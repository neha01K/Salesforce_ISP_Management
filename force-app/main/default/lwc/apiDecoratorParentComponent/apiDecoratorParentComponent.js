import { LightningElement } from 'lwc';

export default class ApiDecoratorParentComponent extends LightningElement {

    productList = [
        {id: 1 ,HairCare: 'Keratine',Dairy : 'Saras',Snacks : 'Pringles'},
        {id: 2, HairCare: 'WishCare',Dairy : 'Butter',Snacks : 'Crax'}
    ];

    callChildMethod(){
        this.template.querySelector('c-api-decorator-child-cmponent').handleParentCall();
    }
}