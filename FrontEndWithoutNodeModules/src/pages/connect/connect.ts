import { MedicinesPage } from './../medicines/medicines';
import { ShowarticlesPage } from './../showarticles/showarticles';
import { MedinfoPage } from './../medinfo/medinfo';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { RemediesPage } from './../remedies/remedies';

/**
 * Generated class for the ConnectPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage({
  name:"connectUs"
})
@Component({
  selector: 'page-connect',
  templateUrl: 'connect.html',
})
export class ConnectPage {

  tab1: any;
  tab2: any;
  tab3: any;
  tab4: any;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
    this.tab1 = MedinfoPage;
    this.tab2 = ShowarticlesPage;
    this.tab3 = MedicinesPage;
    this.tab4 = RemediesPage;
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ConnectPage');
  }

}
