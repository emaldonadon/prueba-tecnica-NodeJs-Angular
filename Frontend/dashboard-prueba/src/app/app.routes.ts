import { Routes } from '@angular/router';
import { LoginComponent } from './page/auth/login/login.component';
import { DrawerComponent } from './components/drawer/drawer.component';
import {ProductsComponent} from "./page/products/products.component"

export const routes: Routes = [
    {
        path: '',
        redirectTo: '/login',
        pathMatch: 'full',
      },
      {
        path: 'login',
        component: LoginComponent,
      },
      {
        path: 'dashboard',
        component: DrawerComponent,
        children: [
          {
            path: '', 
            redirectTo: 'products',
            pathMatch: 'full',
          },
          {
            path: 'products',
            component: ProductsComponent,
          },
        ],
      },
      {
        path: '**',
        redirectTo: '/login',
      },
    ];
    

