<template>
  <div id="appPage">
    <Header/>
    <div class="content">
      <router-view/>
    </div>
    <Footer/>
  </div>
</template>

<script>
import Header from './layout/components/Header.vue';
import Footer from './layout/components/Footer.vue';

export default{
  name: 'App',
  components: {
    Header,
    Footer
  }
}
</script>

<style>
* {
	box-sizing: border-box;
}
header {
	width: 100%;
	height: 60px;
	top: 0;
}

.content {
	min-height: calc(74.5vh);
	padding-top: 65px;
}

footer {
	width: 100%;
	height: 30px
}

</style>