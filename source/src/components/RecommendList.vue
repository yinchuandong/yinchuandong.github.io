<template>
  <section class="recommend">
    <h1 class="title">大咖推荐</h1>
    <ul class="recommend-list">
      <li class="item-recommend">
        <b class="avatar-m" style="background-image:url(http://qzonestyle.gtimg.cn/brand/style/img/head/default.png);"></b>
        <div class="info-con">
          <p class="username">中文名就不酷了中文名就不酷了中文名就不酷了</p>
          <p class="major">这是他的专业描述</p>
        </div>
        <b class="icon-arrow"></b>
      </li>
      <li class="item-recommend">
        <b class="avatar-m" style="background-image:url(http://img.ycg.qq.com/e4084a95-3251-4151-a4ff-6d7e5f06addc/small);"></b>
        <div class="info-con">
          <p class="username">中文名就不酷了中文名就不酷了中文名就不酷了</p>
          <p class="major">这是他的专业描述</p>
        </div>
        <b class="icon-arrow"></b>
      </li>
      <li class="item-recommend">
        <b class="avatar-m" style="background-image:url(http://img.ycg.qq.com/b5d5e536-18b0-4751-af46-ec1b5cf6506a/small);"></b>
        <div class="info-con">
          <p class="username">中文名就不酷了中文名就不酷了中文名就不酷了</p>
          <p class="major">这是他的专业描述</p>
        </div>
        <b class="icon-arrow"></b>
      </li>
    </ul>
  </section>
</template>

<script>

export default {
  name: 'RecommendList',
  data () {
    return {
      items: []
    }
  },

  created () {
  },

  methods: {
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    @import '../assets/css/mod-recommend-list.css';
</style>
