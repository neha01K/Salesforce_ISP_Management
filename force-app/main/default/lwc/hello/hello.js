import { LightningElement, api } from 'lwc';

export default class Hello extends LightningElement {
    @api greeting = 'Good Morning!';

    data ='';
    handleChange(event){
        this.data = event.target.value;
    }
    name='Neha Khandelwal';
    title='Salesforce Developer';
    experience = 'fresher';
    workingHours=2;

    get handleWorkingHours(){
        return (this.workingHours*4);
    }
}