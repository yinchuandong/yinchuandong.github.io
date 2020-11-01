<template>
  <div id="bg"></div>
</template>

<script>
export default {
  name: 'Bg',

  mounted () {
    window.particlesJS.load('bg', '/static/particles.json', () => {
      console.log('callback - particles.js config loaded')
    })
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    #bg{
      width: 100%;
      height: 100%;
      background-color: #b61924;
      background-image: url('');
      background-size: cover;
      /* background-position: 50% 50%; */
      background-repeat: no-repeat;
      position: absolute;
    }
</style>
