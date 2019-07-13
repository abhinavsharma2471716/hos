import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import {FormBuilder,FormGroup,Validators,AbstractControl} from '@angular/forms';
import { Http } from '@angular/http';
import { BananaPage } from '../banana/banana';
/**
 * Generated class for the ApplePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-apple',
  templateUrl: 'apple.html',
})
export class ApplePage {
  formgroup:FormGroup;
  dpass:AbstractControl;
  dmail:AbstractControl;

  public email21 :any;
  public pass21 :any;
  public myInput :any;
  item = [];
  email: any;
  num1: any;
  constructor(public navCtrl: NavController, public navParams: NavParams,public formbuilder :FormBuilder,private http: Http) {
    this.formgroup=this.formbuilder.group({
      dpass:['',Validators.compose([Validators.required,Validators.minLength(5),Validators.pattern('[a-zA-Z0-9]*')])],
      dmail:['',Validators.compose([Validators.required,Validators.pattern('^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$')])],

    });
    this.dpass=this.formgroup.controls['dpass'];
    this.dmail=this.formgroup.controls['dmail'];
  }


logindoc(){
  let body = {
    email21:this.email21,
    pass21:this.pass21
  }
    this.http.post('http://localhost:4000/logindoctor',body).subscribe(response=>{console.log(response.json())
          
    if(response.json().status==400){
      alert("Password incorrect");
    
}
else{
  this.navCtrl.push(BananaPage);
  }
})
}
  
 ionViewDidLoad() {
    console.log('ionViewDidLoad ApplePage');
  }

}
