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
        <a class="links-icon" href="https://www.linkedin.com/in/%E8%88%AA%E8%BC%9D-%E4%BA%95%E4%B8%8A-63461b148/" target="_blank">
          <i class="fab fa-linkedin links-image"></i>
        </a>
        <a class="links-icon" href="https://twitter.com/kokinoue" target="_blank">
          <i class="fab fa-twitter links-image"></i>
        </a>
        <a class="links-icon" href="https://qiita.com/kokinoue" target="_blank">
          <img class="links-image" src="../assets/qiita.ico" alt="qiita">
        </a>
        <a class="links-icon" href="https://note.com/kokinoue" target="_blank">
          <img class="links-image" src="../assets/note.png" alt="note">
        </a>
      </div>
    </div>
  </header>
</template>

<script>
  export default {
    name: 'Header'
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

  header {
    padding-top: 20vh;
    text-align: center;
    @include query($break-small) {
      height: 30vh;
      padding-top: 25vh
    }

    .icon {
      border: 3px solid #ccc;
      border-radius: 50%;
      height: 10vw;
      width: 10vw;
      @include query($break-small) {
        height: 24vw;
        width: 24vw;
      }
    }

    .nav {
      display: flex;
      justify-content: space-around;
      @include query($break-small) {
        display: block;
      }

      a {
        color: #333;
        text-decoration: none;
      }

      .links {
        @include query($break-small) {
          margin: 16px 0;
        }

        .router {
          font-size: 12px;
          letter-spacing: 0.16em;
          padding: 0 12px;

          &-link-exact-active {
            font-weight: bold;
          }
        }

        &-icon {
          display: inline-flex;
          margin: 0 8px;

          .fa-facebook {
            color: #3B5998;
          }

          .fa-linkedin {
            color: #0e76a8;
          }

          .fa-twitter {
            color: #1DA1F2;
          }
        }

        &-image {
          width: 24px;
          height: 24px;
        }
      }
    }
  }
</style>
