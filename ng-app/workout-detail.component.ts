import { Component, Input } from '@angular/core';

import { Workout } from './workout';

@Component({
  selector: 'workout-detail',
  template: `
    <div *ngIf="workout">
      <h2>{{workout.name}} details!</h2>
      <div><label>id: </label>{{workout.id}}</div>
      <div>
        <label>name: </label>
        <input [(ngModel)]="workout.name" placeholder="name"/>
      </div>
    </div>
  `
})
export class WorkoutDetailComponent {
  @Input() workout: Workout;
}
