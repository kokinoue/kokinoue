<template>
  <div id="app">
    <Header></Header>
  </div>
</template>

<script>
  import Header from './packs/components/header';

  export default {
    name: 'MyApp',
    props: {
      msg: String
    },
    components: {
      Header
    }
  }
</script>

<style scoped lang="scss">
  #app {
    color: #333;
  }
</style>
