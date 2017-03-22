import { Component } from '@angular/core';
export class Workout {
  id: number;
  name: string;
}
@Component({
  selector: 'my-app',
  template: `
    <h1>{{title}}</h1>
    <h2>{{workout.name}} details!</h2>
    <div><label>id: </label>{{workout.id}}</div>
    <div>
      <label>name: </label>
      <input [(ngModel)]="workout.name" placeholder="name">
    </div>
    `
})
export class AppComponent {
  title = 'Workout Builder';
  workout: Workout = {
    id: 1,
    name: 'Half Marathon'
  };
}
