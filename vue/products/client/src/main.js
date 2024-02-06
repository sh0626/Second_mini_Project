import BootstrapVue3 from 'bootstrap-vue-3'
import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
// import VueCookies from 'vue-cookies'




// Optional, since every component import their Bootstrap functionality
// the following line is not necessary
// import 'bootstrap'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue-3/dist/bootstrap-vue-3.css'

// app.use(VueCookies);
// app.$cookies.config("7d");
const app = createApp(App)
app.use(BootstrapVue3)
app.use(router)
app.mount('#app')

window.Kakao.init("758e95838a0c57763bb721727fe048a3"); //본인 key입력