import { Component, OnInit} from '@angular/core';

import { Workout } from './workout';
import { WorkoutService } from './workout.service'
import { Router } from '@angular/router';

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
