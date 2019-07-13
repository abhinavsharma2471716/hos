import { RestApiProvider } from './../../providers/rest-api/rest-api';
import { Component, OnInit } from '@angular/core';
import { IonicPage, NavController, NavParams, ModalController } from 'ionic-angular';
import { SortPipe } from '../../pipes/sort/sort';
/**
 * Generated class for the HomePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage({
  name:"remedy"
})
@Component({
  selector: 'page-remedies',
  templateUrl: 'remedies.html',
})
export class RemediesPage implements OnInit{
  // public searchTerm:string = "";
  // items: string[];

  countries: string[];
  errorMessage: string;

  descending: boolean = false;
  order: number;
  column: string = 'name';
  constructor(public rest: RestApiProvider, public navCtrl: NavController, public navParams: NavParams, private modalCtrl: ModalController) {
  }
  ngOnInit(){
    // this.setFilteredItems();
    this.sort();
  }

  setFilteredItems(){
    // this.items = this.serviceProvider.filterItems(this.searchTerm);
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad HomePage');
    this.getCountries();
  }

  getCountries(){
    this.rest.getD().subscribe(data => this.countries = data, error => this.errorMessage = <any>error);
  }
  sort(){
    this.descending = !this.descending;
    this.order = this.descending ? 1 : -1;
  }
  open(c){
    this.navCtrl.push('preview',{c:c});
  }
}
