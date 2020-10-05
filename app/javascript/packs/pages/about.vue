<template>
  <div class="about">
    <table class="about-table">
      <tr class="about-table-row">
        <th class="about-table-row-title">Name: </th>
        <td class="about-table-row-value">Koki Inoue / 井上航輝</td>
      </tr>
      <tr class="about-table-row">
        <th class="about-table-row-title">Job: </th>
        <td class="about-table-row-value">Software Engineer</td>
      </tr>
      <tr class="about-table-row">
        <th class="about-table-row-title">Company: </th>
        <td class="about-table-row-value">READY TO FASHION. Inc</td>
      </tr>
      <tr class="about-table-row">
        <th class="about-table-row-title">Hobby: </th>
        <td class="about-table-row-value">Fashion, Photo, Ski, Trip</td>
      </tr>
    </table>
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

  .about {
    font-size: 20px;
    letter-spacing: 0.08em;
    margin: 20px 0;
    @include query($break-small) {
      font-size: 16px;
    }

    &-table {
      margin: 0 auto;

      &-row {
        display: block;
        margin: 16px 0;
      }
    }
  }
</style>
