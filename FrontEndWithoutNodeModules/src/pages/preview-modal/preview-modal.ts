import { RestApiProvider } from './../../providers/rest-api/rest-api';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ViewController } from 'ionic-angular';

/**
 * Generated class for the PreviewModalPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage({
  name:'preview'
})
@Component({
  selector: 'page-preview-modal',
  templateUrl: 'preview-modal.html',
})
export class PreviewModalPage {
  info:any;
  finfo:any;
  constructor(public navCtrl: NavController, public navParams: NavParams, private viewCtrl: ViewController,public rest: RestApiProvider) {
    this.info = this.navParams.get('c');
    let body = {
      syms:this.info.name
    }
    this.rest.getDiseases(body).subscribe(data=>{
      this.finfo = data;
    })
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad PreviewModalPage');
  }
  //The below function was never being called
  // gethim(){
  //   let body = {
  //     syms:this.info.name
  //   }
  //   this.rest.getDiseases(body).subscribe(data=>{
  //     this.finfo = data;
  //   })
  // }

}
