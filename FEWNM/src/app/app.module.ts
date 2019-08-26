import { MedicinesPage } from './../pages/medicines/medicines';
import { RemediesPage } from './../pages/remedies/remedies';
import { ShowarticlesPage } from './../pages/showarticles/showarticles';
import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { SplashScreen } from '@ionic-native/splash-screen';
import { StatusBar } from '@ionic-native/status-bar';


import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';
import { SignupPage } from '../pages/signup/signup';
import { LoginPage } from '../pages/login/login';
import { HttpModule } from '@angular/http';
import { MedinfoPage } from '../pages/medinfo/medinfo';
import { AdvancePage } from '../pages/advance/advance';
import { AppointPage } from '../pages/appoint/appoint';
import { DetailPage } from '../pages/detail/detail';

import { HttpClientModule } from '@angular/common/http';

import { BananaPage } from '../pages/banana/banana';
import { MangoPage } from '../pages/mango/mango';
import { ApplePage } from '../pages/apple/apple';
import { DataProvider } from '../providers/data/data';

@NgModule({
  declarations: [
    MyApp,
    HomePage,
    SignupPage,
    LoginPage,
    MedinfoPage, 
    AdvancePage,
    AppointPage,
    DetailPage,
    ShowarticlesPage,
    RemediesPage,
    MedicinesPage,
    ApplePage,
    MangoPage,
    BananaPage
    
  
  
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp),
    HttpModule,
    HttpClientModule
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    SignupPage,
    LoginPage,
    MedinfoPage,
    AdvancePage,
    AppointPage,
    DetailPage,
    ShowarticlesPage,
    RemediesPage,
    MedicinesPage,
    ApplePage,
    MangoPage,
    BananaPage
   
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    DataProvider
  ]
})
export class AppModule {}
