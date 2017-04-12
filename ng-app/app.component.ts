import { Component } from '@angular/core';

@Component({
  selector: 'my-app',
  template: `
    <h1>{{title}}</h1>
    <my-workouts></my-workouts>
  `,
  styleUrls: ['']
})
export class AppComponent {
  title = 'Workout Builder';
}
