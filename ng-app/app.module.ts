import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule }   from '@angular/forms';
import { HttpModule }    from '@angular/http';

import { AppComponent }        from './app.component';
import { WorkoutsComponent } from './workouts.component';
import { HomeComponent } from './home.component';
import { WorkoutDetailComponent } from './workout-detail.component';
import { AppRoutingModule } from './app-routing.module'
import { WorkoutService } from './workout.service';

@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    AppRoutingModule,
    HttpModule
  ],
  declarations: [
    AppComponent,
    WorkoutsComponent,
    WorkoutDetailComponent,
    HomeComponent
  ],
  bootstrap: [ AppComponent ],
  providers: [ WorkoutService ]
})
export class AppModule { }
