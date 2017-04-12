import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule }   from '@angular/forms';

import { AppComponent }        from './app.component';
import { WorkoutsComponent } from './workouts.component';
import { HomeComponent } from './home.component';
import { WorkoutDetailComponent } from './workout-detail.component';
import { AppRoutingModule } from './app-routing.module'

@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    AppRoutingModule
  ],
  declarations: [
    AppComponent,
    WorkoutsComponent,
    WorkoutDetailComponent,
    HomeComponent
  ],
  bootstrap: [ AppComponent ]
})
export class AppModule { }
