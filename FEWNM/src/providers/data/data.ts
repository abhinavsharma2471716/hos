import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

/*
  Generated class for the DataProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class DataProvider {

  public items:any = [];
 
  apiNewURL="http://localhost:3000/comprobs";
  apiComDisURL="http://localhost:3000/commonprobdiseases"; 

  constructor(public http: HttpClient) {
    
    //Initially shows the total number of Common Problems
    this.getComProbs().subscribe(data=>{
      this.items = data;
      console.log(data);
    })

    console.log('Hello DataProvider Provider');
  }

  //Filters Seachbar for common Problems
  filterItems(searchTerm){
    return this.items.filter(item =>{
      return item.Name.toLowerCase().indexOf(searchTerm.toLowerCase())>-1; //items array, item access each array ele,converted to lowercase
      //indexOf() searches the searchTerm substring in the items array, and gives the array ele which have that substring in it! #nested Return
    })
  }

  //Gets the Common Probs
  getComProbs(){
    console.log("Get the ComProbs");
    return this.http.get(this.apiNewURL);
  }

  //Posts to Probable Diseases
  postComDis(body){
    console.log("Get the ComDiseases");
    return this.http.post(this.apiComDisURL,body);
  }

}
