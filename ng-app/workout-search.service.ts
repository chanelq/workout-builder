import { Injectable }    from '@angular/core';
import { Headers, Http } from '@angular/http';
import { Workout } from './workout';

import { Observable }     from 'rxjs/Observable';
import 'rxjs/add/operator/map';

@Injectable()
export class WorkoutSearchService {

  constructor(private http: Http) { }

  search(term: string): Observable<Workout[]>{
    return this.http
               .get(`workouts/search/${term}`)
               .map(response => response.json() as Workout[]);
  }
}
