<template>
  <div class="navigator">
      <nav>
          <button class="icon-nav" v-on:click="toggleSidebar()"></button>
          <ul class="nav"><li>推荐</li><li>关注</li><li>合作</li></ul>
      </nav>

      <transition name="slide">
        <div class="sidebar-con" v-if="navShown" v-on:click="toggleSidebar()">
          <div class="sidebar">
              <b class="avatar-m"></b>
              <p class="username">boduoyejieyi</p>
              <ul class="side-nav">
                  <li class="item-nav">每日一展</li>
                  <li class="item-nav">我的主页</li>
                  <li class="item-nav">消息中心</li>
                  <li class="item-nav">设置</li>
              </ul>
          </div>
      </div>
    </transition>
  </div>
</template>

<script>
export default {
  name: 'Navigator',

  data () {
    return {
      navShown: false
    }
  },

  methods: {
    toggleSidebar () {
      console.log(1)
      this.navShown = !this.navShown
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    @import '../assets/css/nav.css';
</style>
