<template>
  <div id="app">
    <Header></Header>
    <router-view />
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
  $break-small: 414px;
  $break-medium: 960px;

  @mixin query($size) {
      @media all and (max-width: $size) {
          @content;
      }
  }

  #app {
    color: #333;
    margin: 0 auto;
    width: 60vw;
    @include query($break-medium) {
      width: 90vw;
    }
  }
</style>
