import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule }   from '@angular/forms';

import { AppComponent }        from './app.component';
import { WorkoutDetailComponent } from './workout-detail.component';

@NgModule({
  imports: [
    BrowserModule,
    FormsModule
  ],
  declarations: [
    AppComponent,
    WorkoutDetailComponent
  ],
  bootstrap: [ AppComponent ]
})
export class AppModule { }
