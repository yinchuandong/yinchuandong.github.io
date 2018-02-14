<template>
  <section class="worklist">
    <ul id="j-work-list" class="mod-worklist">
      <li class="work-item"
        v-for="item in items"
        v-bind:style="{backgroundImage:'url(' + item.src +')'}"
        v-on:click="view(item)">
        <div class="user-info">
          <b class="avatar-s" style="background-image:url(http://img.ycg.qq.com/201832/0/852ca2e0-3425-40bd-870c-275b2a6e0119/small);"></b>
          <div class="username"><p>用中文就没那么好看了</p></div>
          <button class="icon-comment"></button><span>34</span>
          <button class="icon-like"></button><span>222</span>
        </div>
      </li>
    </ul>
  </section>
</template>

<script>
import Ajax from '../libs/ajax'

export default {
  name: 'WorkList',
  data () {
    return {
      items: []
    }
  },

  created () {
    var self = this
    Ajax.getWorkList(res => {
      self.items = res.body
    })
  },

  methods: {
    view (item) {
      // console.log(item)
      this.$router.push({name: 'viewer', params: {id: item.id}})
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    @import '../assets/css/mod-work-list.css';
</style>
