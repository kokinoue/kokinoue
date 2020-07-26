<template>
  <div class="about">
    <p>aboutのpage</p>
  </div>
</template>
<script>
</script>
<style scoped lang="scss">
  $break-small: 414px;
  $break-medium: 960px;

  @mixin query($size) {
      @media all and (max-width: $size) {
          @content;
      }
  }
</style>
