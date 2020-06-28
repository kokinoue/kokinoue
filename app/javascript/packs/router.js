import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from './pages/home.vue'
import About from './pages/about.vue'
import Contact from './pages/contact.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/',  name: 'Home', component: Home },
  { path: '/about', name: 'About', component: About },
  { path: '/contact', name: 'Contact', component: Contact }
];

export default new VueRouter({ mode: 'history', routes: routes });
