<template>
  <div id="app">
    <Header></Header>
  </div>
</template>

<script>
  import Header from './packs/components/header';

  export default {
    name: 'kokinoue',
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
