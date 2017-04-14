import { Component, OnInit } from '@angular/core';
import { Router }            from '@angular/router';

import { Observable }        from 'rxjs/Observable';
import { Subject }           from 'rxjs/Subject';

// Observable class extensions
import 'rxjs/add/observable/of';

// Observable operators
import 'rxjs/add/operator/catch';
import 'rxjs/add/operator/debounceTime';
import 'rxjs/add/operator/distinctUntilChanged';
import 'rxjs/add/operator/switchMap';

import { Workout } from './workout';
import { WorkoutSearchService} from './workout-search.service';


@Component({
  selector: 'workout-search',
  templateUrl: './workout-search.component.html',
  providers: [WorkoutSearchService]
})
export class WorkoutSearchComponent implements OnInit {
  private searchTerms = new Subject<string>();
  workouts: Observable<Workout[]>;

  constructor(
    private workoutSearchService: WorkoutSearchService,
    private router: Router) {}

  search(term: string): void {
    this.searchTerms.next(term);
  }

  ngOnInit(): void {
    this.workouts = this.searchTerms
      .debounceTime(300)
      .distinctUntilChanged()
      .switchMap(term => term ? this.workoutSearchService.search(term) : Observable.of<Workout[]>([]))
      .catch(error => {
              // TODO: add real error handling
              console.log(error);
              return Observable.of<Workout[]>([]);
            });
  }

}
