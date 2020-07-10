<template lang="html">
  <header>
    <img class="icon" src="../assets/icon.png" alt="アイコン">
    <div class="links">
      <router-link to="/">Home</router-link>
      <router-link to="/about">About</router-link>
      <router-link to="/contact">Contact</router-link>
      <a href="https://github.com/kokinoue/" target="_blank"><i class="fab fa-github"></i></a>
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
    }
  }
</style>
