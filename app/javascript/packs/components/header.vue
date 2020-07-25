<template lang="html">
  <header>
    <img class="icon" src="../assets/icon.gif" alt="アイコン">
    <div class="nav">
      <div class="links">
        <router-link to="/" class="router">Home</router-link>
        <router-link to="/about" class="router">About</router-link>
        <router-link to="/contact" class="router">Contact</router-link>
      </div>
      <div class="links">
        <a class="links-icon" href="https://github.com/kokinoue/" target="_blank">
          <i class="fab fa-github links-image"></i>
        </a>
        <a class="links-icon" href="https://www.facebook.com/koki.inoue.921" target="_blank">
          <i class="fab fa-facebook links-image"></i>
        </a>
        <a class="links-icon" href="https://twitter.com/fashionenjineer" target="_blank">
          <i class="fab fa-twitter links-image"></i>
        </a>
        <a class="links-icon" href="https://qiita.com/ko_ki" target="_blank">
          <img class="links-image" src="../assets/qiita.ico" alt="qiita">
        </a>
        <a class="links-icon" href="https://note.com/kkkkiiiii" target="_blank">
          <img class="links-image" src="../assets/note.png" alt="note">
        </a>
      </div>
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
    margin: 0 auto;
    padding-top: 30vh;
    text-align: center;
    width: 60vw;

    .icon {
      border: 3px solid #ccc;
      border-radius: 50%;
      height: 10vw;
      width: 10vw;
    }

    .nav {
      display: flex;
      justify-content: space-around;

      a {
        color: #333;
        text-decoration: none;
      }

      .links {
        .router {
          font-size: 12px;
          letter-spacing: 0.15em;
          padding: 0 12px;

          &-link-exact-active {
            font-weight: bold;
          }
        }

        &-icon {
          display: inline-flex;
          margin: 0 4px;
        }

        &-image {
          width: 24px;
          height: 24px;
        }
      }
    }
  }
</style>
