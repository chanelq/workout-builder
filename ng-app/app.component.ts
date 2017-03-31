import { Component } from '@angular/core';
export class Workout {
  id: number;
  name: string;
}
@Component({
  selector: 'my-app',
  templateUrl: './app.component.html'
})
export class AppComponent {
  title = 'Workout Builder';
  workout: Workout = {
    id: 1,
    name: 'Half Marathon'
  };
}
