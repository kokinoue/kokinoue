require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "core-js";
import "regenerator-runtime/runtime";
import '@fortawesome/fontawesome-free/js/all';
import '../src/application.scss';

import Vue from 'vue'
import App from '../app.vue'
import Router from './router.js'

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#app',
    router: Router,
    render: (h) => h(App)
  })
})
