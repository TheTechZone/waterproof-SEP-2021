import Vue from 'vue';
import Vuex from 'vuex';
import App from './App.vue';
import BootstrapVue from 'bootstrap-vue';

// add the coq mode to codemirror
import './codemirror/CoqCodemirrorMode';

import VueRouter from 'vue-router';
import routes from './router';


Vue.config.productionTip = false;
Vue.use(require('vue-shortkey'));
Vue.use(Vuex);
Vue.use(BootstrapVue);
Vue.use(VueRouter);

import store from './store/store';

// We import this here (instead of via style-resources-loader) to prevent
// duplication.
import './assets/sass/main.scss';

new Vue({
  store: new Vuex.Store(store),
  router: new VueRouter(routes),
  render: (h) => h(App),
}).$mount('#app');
