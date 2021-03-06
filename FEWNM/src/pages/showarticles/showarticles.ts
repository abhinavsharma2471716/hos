import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Http } from '@angular/http';
/**
 * Generated class for the ShowarticlePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-showarticles',
  templateUrl: 'showarticles.html',
})
export class ShowarticlesPage {
  public: any;
  public myInput: any;
  public item: any = [];
  public res: any = [];

  constructor(public navCtrl: NavController, public navParams: NavParams, private http: Http) {
    this.getdata();
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ShowarticlesPage');
  }

  getdata() {

    var i, j;
    this.http.get('http://localhost:4000/getUsers').subscribe(data => {
      this.item = data.json();

      for (i = 0; i < this.item.length; i++) {
        this.res.push({
          title: this.item[i].title,
          story: this.item[i].story,

        })


      }
    });
  }
}
