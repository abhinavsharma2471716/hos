import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { map, catchError } from 'rxjs/operators';
// import 'rxjs/add/operator/map';

/*
  Generated class for the RestApiProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class RestApiProvider {
  private apiURL = 'http://localhost:3000/diseases';
  private apiURL2 = 'http://localhost:3000/probdiseases';

  constructor(public http: HttpClient) {
    console.log('Hello RestApiProvider Provider');
  }

  getD(): Observable<string[]>{
    return this.http.get(this.apiURL).pipe(map(this.extractData),
    catchError(this.handleError)
    );
  }

  //Error Handlling
  private extractData(res: Response) {
    let body = res;
    return body || {};
  }
  
  private handleError (error: Response | any) {
    let errMsg: string;
    if (error instanceof Response) {
      const err = error || '';
      errMsg = `${error.status} - ${error.statusText || ''} ${err}`;
    } else {
      errMsg = error.message ? error.message : error.toString();
    }
    console.error(errMsg);
    return Observable.throw(errMsg);
  }

  getDiseases(body){
    console.log("getDiseases function was triggered!")
    return this.http.post(this.apiURL2,body);
    // return this.http.get(this.apiURL+'diseases').map(res=>res) Older method suited with HttpClient and not Http
    // return this.http.get(this.apiURL+'diseases').map(res=>res.json()); Much more older method suited with Http and not HttpClient
  }
}
