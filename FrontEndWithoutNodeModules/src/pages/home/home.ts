import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { SignupPage } from '../signup/signup';
import { LoginPage } from '../login/login';
import { ApplePage } from '../apple/apple';



@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
  

  constructor(public navCtrl: NavController ) {
 
  }
  signin()
  {
    this.navCtrl.push(SignupPage);
  }
  login(){
    this.navCtrl.push(LoginPage);
  }
  docin(){
    this.navCtrl.push(ApplePage);
  }

}
