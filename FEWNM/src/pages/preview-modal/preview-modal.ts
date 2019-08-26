import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { DataProvider } from './../../providers/data/data';

/**
 * Generated class for the PreviewModalPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-preview-modal',
  templateUrl: 'preview-modal.html',
})
export class PreviewModalPage {
  info:any;
  diseases:any;
  
  constructor(public navCtrl: NavController, public navParams: NavParams, public ds:DataProvider) {
    this.info = this.navParams.get('getCat');
    console.log(this.info);
    let body = {
      nam:this.info
    }
    this.ds.postComDis(body).subscribe(data=>{
      this.diseases = data;
      console.log(data);
    })
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ProbdiseasesPage');
  }

}
