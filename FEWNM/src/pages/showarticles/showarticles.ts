import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { Http } from '@angular/http';

/**
 * Generated class for the ShowarticlePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-showarticles',
  templateUrl: 'showarticles.html',
})

export class ShowarticlesPage {
  public: any;
  public myInput: any;
  public items: any = [];
  public res: any = [];

  constructor(public navCtrl: NavController, public navParams: NavParams, private http: Http) {
    this.getdata();
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ShowarticlesPage');
  }

  getdata() {

    // var i, j;
    this.http.get('http://localhost:3000/getUsers').subscribe(data => {
      this.items = data.json();
      // for (i = 0; i < this.item.length; i++) {
      //   this.res.push({
      //     title: this.item[i].title,
      //     story: this.item[i].story,
      //   })
      // }
      // console.log(this.res);
      console.log(this.items);
    });
  }

  getDetails(item){
    this.navCtrl.push('ArticleDetailsPage',{goat:item});
  }
}
