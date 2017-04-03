import { Component, OnInit } from '@angular/core';
import { Router }            from '@angular/router';

import { Workout }                from './workout';


@Component({
  selector: 'workouts',
  templateUrl: './workouts.component.html',
  styleUrls: [ './workouts.component.css' ]
})
export class WorkoutsComponent implements OnInit {
  Workouts: Hero[];
  selectedHero: Hero;

  constructor(
    private heroService: HeroService,
    private router: Router) { }

  getWorkouts(): void {
    this.heroService
        .getWorkouts()
        .then(Workouts => this.Workouts = Workouts);
  }

  add(name: string): void {
    name = name.trim();
    if (!name) { return; }
    this.heroService.create(name)
      .then(hero => {
        this.Workouts.push(hero);
        this.selectedHero = null;
      });
  }

  delete(hero: Hero): void {
    this.heroService
        .delete(hero.id)
        .then(() => {
          this.Workouts = this.Workouts.filter(h => h !== hero);
          if (this.selectedHero === hero) { this.selectedHero = null; }
        });
  }

  ngOnInit(): void {
    this.getWorkouts();
  }

  onSelect(hero: Hero): void {
    this.selectedHero = hero;
  }

  gotoDetail(): void {
    this.router.navigate(['/detail', this.selectedHero.id]);
  }
}
