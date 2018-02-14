<template>
  <div id="index">
    <div id="particles-js"></div>
  </div>


</template>

<script>

// import particlesJS from 'particles.js' // eslint-disable-line no-unused-vars
// import particlesJS // eslint-disable-line no-unused-vars
// import Navigator from '../components/Navigator.vue'

export default {
  name: 'Index',
  // components: { Navigator },
  mounted () {
    console.log('---mounted----')
    // console.log(window.particlesJS)
    window.particlesJS.load('particles-js', '/static/particles.json', () => {
      console.log('callback - particles.js config loaded')
    })
  }
}
</script>

<style scoped>
  @import '../assets/css/index.css';

/* #particles-js{
  width: 100%;
  height: 100%;
  background-color: #b61924;
  background-image: url('');
  background-size: cover;
  background-position: 50% 50%;
  background-repeat: no-repeat;
} */
</style>
