import { LightningElement, track } from 'lwc';
import getAgents from '@salesforce/apex/AgentDataService.getAgents';
import getCustomersByAgent from '@salesforce/apex/AgentDataService.getCustomersByAgent';
import getActivePlansByCustomer from '@salesforce/apex/AgentDataService.getActivePlansByCustomer';

export default class AgentDashboard extends LightningElement {
    @track agentOptions = [];
    @track customers = [];
    @track plans = [];
    @track selectedAgentId;
    @track selectedCustomerId;

    connectedCallback() {
        this.loadAgents();
    }

    loadAgents() {
        getAgents()
            .then(response => {
                this.agentOptions = response.map(agent => ({
                    label: agent.name,
                    value: agent.id
                }));
            })
            .catch(console.error);
    }

    handleAgentChange(event) {
        this.selectedAgentId = event.detail.value;
        this.customers = [];
        this.plans = [];

        getCustomersByAgent({ agentId: this.selectedAgentId })
            .then(response => {
                this.customers = response;
            })
            .catch(console.error);
    }

    handleCustomerSelected(event) {
        this.selectedCustomerId = event.detail;

        getActivePlansByCustomer({ customerId: this.selectedCustomerId })
            .then(response => {
                this.plans = response;
            })
            .catch(console.error);
    }
}