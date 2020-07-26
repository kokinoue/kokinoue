<template>
  <div class="home">
    <p class="home-title">Koki Inoue / 井上 航輝</p>
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
    letter-spacing: 0.08em;
    margin: 20px 0;
    text-align: center;

    &-title {
      font-size: 20px;
      letter-spacing: 0.08em;
      margin: 0;
    }
  }
</style>
