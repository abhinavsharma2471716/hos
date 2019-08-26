import { DataProvider } from './../../providers/data/data';
import { Component } from '@angular/core';
import { NavController,IonicPage } from 'ionic-angular';

@IonicPage()
@Component({
  selector: 'page-remedies',
  templateUrl: 'remedies.html',
})

export class RemediesPage {

  items:any;
  searchTerm:string = "";

  constructor(public navCtrl: NavController, private ds: DataProvider) {

  }

  //Initialized the 
  ionViewWillEnter(){
    this.setFilteredItems(); 
  }

  // ngOnInit(){
  //   this.setFilteredItems();
  // }

  setFilteredItems(){
    this.items = this.ds.filterItems(this.searchTerm);
  }

  open(cat){
    this.navCtrl.push('PreviewModalPage',{getCat:cat}); //Lazy Loading by just calling the export class name
  }

}
