<template lang="html">
  <header>
    <img class="icon" src="../assets/icon.png" alt="アイコン">
    <div class="links">
      <router-link to="/">Home</router-link>
      <router-link to="/about">About</router-link>
      <router-link to="/contact">Contact</router-link>
      <a class="links-icon" href="https://github.com/kokinoue/" target="_blank">
        <i class="fab fa-github"></i>
      </a>
      <a class="links-icon" href="https://www.facebook.com/koki.inoue.921" target="_blank">
        <i class="fab fa-facebook"></i>
      </a>
      <a class="links-icon" href="https://twitter.com/fashionenjineer" target="_blank">
        <i class="fab fa-twitter"></i>
      </a>
      <a class="links-icon" href="https://qiita.com/ko_ki" target="_blank">
        <img class="links-image" src="../assets/qiita.ico" alt="qiita">
      </a>
    </div>
    <router-view />
  </header>
  </div>
</template>

<script>
export default {
  name: 'Header'
}
</script>

<style scoped lang="scss">
  header {
    margin-top: 30vh;
    text-align: center;

    .icon {
      border: 3px solid #ccc;
      border-radius: 50%;
      height: 10vw;
      width: 10vw;
    }

    .links {
      a {
        color: #333;
      }

      &-icon, &-image {
        width: 16px;
        height: 16px;
      }
    }
  }
</style>
