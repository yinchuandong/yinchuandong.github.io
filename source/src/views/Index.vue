<template>
  <div id="index">
    <Bg />
    <WorkList />



  </div>
</template>

<script>

import Bg from '../components/Bg.vue'
import WorkList from '../components/WorkList.vue'

export default {
  name: 'Index',
  components: { Bg, WorkList },
  mounted () {
  }
}
</script>

<style scoped>

#index{height: auto;position: relative;}
</style>
