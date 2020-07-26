<template>
  <div class="contact">
    <div v-if="success" class="contact-success">
      <p class="contact-success-message">送信しました。</p>
    </div>
    <div v-if="error" class="contact-error">
      <p class="contact-error-message">送信に失敗しました。</p>
    </div>
    <form @submit.prevent="sendMessage" class="contact-form" method="post">
      <div class="contact-form-row">
        <p class="contact-form-row-label">Name</p>
        <input id="name" class="contact-form-row-input" v-model="contact.name" type="text" required>
      </div>
      <div class="contact-form-row">
        <p class="contact-form-row-label">Email</p>
        <input id="email" class="contact-form-row-input" v-model="contact.email" type="email" name="email" required>
      </div>
      <div class="contact-form-row">
        <p class="contact-form-row-label">Title</p>
        <input id="title" class="contact-form-row-input" v-model="contact.title" type="text" name="title" required>
      </div>
      <div class="contact-form-row">
        <p class="contact-form-row-label">Message</p>
        <textarea id="message" class="contact-form-row-input" v-model="contact.message" type="text" name="message" required rows="8"></textarea>
      </div>
      <div class="contact-form-row">
        <input class="contact-form-row-submit" type="submit" value="Send">
      </div>
    </form>
  </div>
</template>

<script>
  import axios from 'axios';

  const token = document.getElementsByName('csrf-token')[0].getAttribute('content')
  axios.defaults.headers.common['X-CSRF-Token'] = token

  export default {
    name: 'contact',
    data: function() {
      return {
        contact: {
          name: '',
          email: '',
          title: '',
          message: ''
        },
        success: false,
        error: false
      }
    },
    methods: {
      sendMessage: function() {
        axios
          .post('/api/v1/contact', this.contact)
          .then(response => {
            console.log('成功');
            let e = response.data;
            this.success = e.success
            this.error = false
          })
          .catch(error=> {
            console.error(error);
            if (error.response.data && error.response.data.error) {
              this.error = error.response.data.error;
              this.success = false
            }
          });
      }
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

  .contact {
    letter-spacing: 0.08em;
    margin: 40px 0;

    &-form {
      &-row {
        margin: 0 auto 20px;
        width: 50%;
        @include query($break-small) {
          width: 100%;
        }

        &-label {
          margin: 0;
          text-align: left;
        }

        &-input {
          padding: 4px;
          width: 100%;
        }

        &-submit {
          background: #fff;
          border: 2px solid #ccc;
          padding: 12px;
          width: 100%;
          -webkit-appearance: none;
          &:hover {
            background: #ccc;
          }
        }
      }
    }
  }
</style>
