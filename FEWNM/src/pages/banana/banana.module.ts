import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { BananaPage } from './banana';

@NgModule({
  declarations: [
    BananaPage,
  ],
  imports: [
    IonicPageModule.forChild(BananaPage),
  ],
})
export class BananaPageModule {}
