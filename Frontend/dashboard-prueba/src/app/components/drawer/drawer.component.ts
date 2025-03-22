import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { RouterModule, RouterOutlet, RouterLink } from '@angular/router';
import { Router } from '@angular/router';

@Component({
  selector: 'app-drawer',
  imports: [CommonModule, RouterModule,RouterOutlet, RouterLink ],
  templateUrl: './drawer.component.html',
  styleUrl: './drawer.component.css',
})
export class DrawerComponent {
  isOpen = false;
  isProductsSubmenuOpen = false;

  Drawer() {
    this.isOpen = !this.isOpen;
  }

  closeDrawer() {
    this.isOpen = false;
  }

  ProductsSubmenu() {
    this.isProductsSubmenuOpen = !this.isProductsSubmenuOpen;
  }
}
