<template lang="html">
  <header>
    <img class="icon" src="../assets/icon.png" alt="アイコン">
    <div class="links">
      <router-link to="/">Home</router-link>
      <router-link to="/about">About</router-link>
      <router-link to="/contact">Contact</router-link>
      <router-view />
    </div>
  </header>
  </div>
</template>

<script>
export default {
  name: 'Header'
}
</script>

<style scoped>
  header {
    margin-top: 30vh;
    text-align: center;
  }

  .icon {
    border: 3px solid #ccc;
    border-radius: 50%;
    height: 10vw;
    width: 10vw;
  }
</style>
