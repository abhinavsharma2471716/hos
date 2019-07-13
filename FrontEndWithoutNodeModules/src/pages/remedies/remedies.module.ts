import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { RemediesPage } from './remedies';

@NgModule({
  declarations: [
    RemediesPage,
  ],
  imports: [
    IonicPageModule.forChild(RemediesPage),
  ],
})
export class RemediesPageModule {}
