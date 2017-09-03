import { Component } from '@angular/core';
import { Hero } from './hero';

@Component({
  selector: 'hero-detail',
  template: `
  <div *ngIf="hero">
    <h2>{{hero.name}} details!</h2>
    <div>ID: {{hero.id}}</div>
    <div>
      <label>Name:
      <input [(ngModel)]="hero.name" placeholder = "Name">
      </label>
    </div>
  </div>
  `
})

export class HeroDetailComponent {
  hero: Hero;
}