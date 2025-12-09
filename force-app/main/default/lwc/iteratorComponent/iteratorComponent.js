import { LightningElement } from 'lwc';

export default class IteratorComponent extends LightningElement {
    taskList = [
        {taskId: 1, taskName:'Watching tutorials', priority: 'Medium', progress:'In Progress' },
        {taskId: 2, taskName:'Doing hands-on', priority: 'Medium', progress:'Pending'},
        {taskId: 3, taskName:'Review practice', priority: 'High', progress:'Pending'}
    ];
}