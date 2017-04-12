import { Component, OnInit} from '@angular/core';

import { Workout } from './workout';
import { WorkoutService } from './workout.service'
import { Router } from '@angular/router';

const WORKOUTS: Workout[] = [
  { id: 11, name: 'Mr. Nice' },
  { id: 12, name: 'Narco' },
  { id: 13, name: 'Bombasto' },
  { id: 14, name: 'Celeritas' },
  { id: 15, name: 'Magneta' },
  { id: 16, name: 'RubberMan' },
  { id: 17, name: 'Dynama' },
  { id: 18, name: 'Dr IQ' },
  { id: 19, name: 'Magma' },
  { id: 20, name: 'Tornado' }
];

@Component({
  selector: 'my-workouts',
  templateUrl: './workouts.component.html',
  styleUrls: ['./workouts.component.css']
})

export class WorkoutsComponent implements OnInit {
  workouts: Workout[];
  selectedWorkout: Workout;

  constructor(private workoutService: WorkoutService,
              private router: Router) { }

  onSelect(workout: Workout): void {
    this.selectedWorkout = workout;
  }

  ngOnInit(): void {
    this.workoutService
      .getWorkouts()
      .then(workouts => {
        this.workouts = workouts;
      });
  }
}
