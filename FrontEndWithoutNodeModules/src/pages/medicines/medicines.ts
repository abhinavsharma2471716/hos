import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Http } from '@angular/http';

/**
 * Generated class for the MedicinesPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage({
  name:'medicines'
})

@Component({
  selector: 'page-medicines',
  templateUrl: 'medicines.html',
})
export class MedicinesPage {
  names:any;
  query:any;

  constructor(public http:Http, public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad MedicinesPage');
  }

  search(){
    this.http.get("https://rxnav.nlm.nih.gov/REST/Prescribe/drugs?name="+this.query).subscribe((res)=>{
      console.log(res.json());
      this.names=res.json().drugGroup.conceptGroup[res.json().drugGroup.conceptGroup.length-1].conceptProperties[0].name;
    });
  }
}
