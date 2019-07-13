import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Http } from '@angular/http';
import { AbstractControl } from '@angular/forms';
import { ShowarticlesPage } from '../showarticles/showarticles';
/**
 * Generated class for the BananaPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-banana',
  templateUrl: 'banana.html',
})
export class BananaPage {
  title1:AbstractControl;
  story1:AbstractControl;
  public  :any;
  public myInput :any;
  public item :any=[];
  public res :any=[];
  constructor(public navCtrl: NavController, public navParams: NavParams,private http: Http) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad BananaPage');
  }

  publish(){
    /*
    {
  this.navCtrl.push(ShowarticlesPage,{title1:this.title1,story1:this.story1});
    }
   */ let Story = {
      title1:this.title1,
      story1:this.story1,
    }
     console.log(Story);
     alert('Succeessfully added');
     this.http.post('http://localhost:4000/addstory', Story).subscribe(response => {
     
      console.log('POST Response:', response);
      
  });
  }
  
  }