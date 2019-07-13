import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { MangoPage } from './mango';

@NgModule({
  declarations: [
    MangoPage,
  ],
  imports: [
    IonicPageModule.forChild(MangoPage),
  ],
})
export class MangoPageModule {}
