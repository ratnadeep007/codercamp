<template>
  <div>
    <div class="container mx-auto">
      <Header></Header>
      <router-view></router-view>
    </div>
    <div v-if="$route.path == '/'">
      <Footer></Footer>
    </div>
  </div>
</template>

<script>
import Header from "./Header.vue";
import Footer from "./Footer.vue";

export default {
  components: {
    Header,
    Footer,
  },
};
</script>
