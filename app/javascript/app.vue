<template>
  <div id="app">
    <p>testです</p>
    <router-link to="/">Home</router-link>
    <router-link to="/about">About</router-link>
    <router-link to="/contact">Contact</router-link>
    <router-view />
  </div>
</template>

<script>
// export default {
//   data: function () {
//     return {
//       message: "Hello Vue!"
//     }
//   }
// }

export default {
  name: 'MyApp',
  props: {
    msg: String
  }
  // components: {
  //   Header,Footer
  // }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
