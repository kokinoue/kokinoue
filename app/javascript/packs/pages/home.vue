<template>
  <div class="home">
    <p class="home-title">koki inoue / 井上 航輝</p>
  </div>
</template>
<script>
  export default {
    name: 'home'
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

  .home {
    margin: 20px 0;

    &-title {
      font-size: 20px;
      letter-spacing: 0.10em;
      margin: 0;
    }
  }
</style>
