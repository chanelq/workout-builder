import { Injectable }    from '@angular/core';
import { Headers, Http } from '@angular/http';
import { Workout } from './workout';

import 'rxjs/add/operator/toPromise';

@Injectable()
export class WorkoutService {

  constructor(private http: Http) { }

  getWorkouts(): Promise<Workout[]> {
    return this.http.get('/workouts')
      .toPromise()
      .then(response => {
        return response.json() as Workout[];
      })
      .catch(this.handleError);
  }

  private handleError(error: any): Promise<any> {
      console.error('An error occurred', error); // for demo purposes only
      return Promise.reject(error.message || error);
    }
}
