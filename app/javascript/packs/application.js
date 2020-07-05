require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "core-js";
import "regenerator-runtime/runtime";

import Vue from 'vue'
import App from '../app.vue'
import Router from './router.js'

const assets = require.context('./assets/', true)

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#app',
    router: Router,
    render: (h) => h(App)
  })
})
