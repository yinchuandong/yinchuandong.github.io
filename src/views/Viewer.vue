<template>
  <div class="page-viewer">
  	<button class="icon-close-w" v-on:click="goBack()"></button>
  	<div class="player-window">
      <div class="player">

        <video v-bind:poster="item.video_cover" controls width="100%">
          <source v-bind:src="item.video_path" type="video/mp4">
        </video>
    	</div>
  	</div>
  	<div class="article-detail">
  		<h1 class="title">{{ item.name }}</h1>
  		<p class="detail-txt">{{ item.info }}</p>
  		<div class="user-info">
  			<b class="avatar-s"></b>
  			<div class="username"><p>{{ item.author }}</p>	</div>
  			<b class="icon-share"></b>
  			<b class="icon-comment"></b>
  			<b class="icon-like"></b>
  		</div>
  	</div>
  </div>
</template>

<script>

import Ajax from '../libs/ajax'
import Plyr from 'plyr'

export default {
  name: 'Viewer',

  data () {
    return {
      item: {}
    }
  },

  mounted () {
    var self = this
    Ajax.getWorkList(res => {
      var items = res.body
      var itemId = self.$route.params.id
      self.item = items[itemId]
      console.log(self.item)
      Plyr.setup()  // need to call it to reset the player with cover and path
    })
  },

  methods: {
    goBack () {
      this.$router.go(-1)
    }
  }
}
</script>

<style scoped>
    @import '/static/css/plyr.css';
    @import '../assets/css/viewer.css';
</style>
