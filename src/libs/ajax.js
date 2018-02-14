import Vue from 'vue'

var ajax = {
  getWorkList: function (successCallback, errorCallback) {
    Vue.http.get('/static/data.json').then(successCallback, errorCallback)
  },

  getWork: function (successCallback, errorCallback) {
    Vue.http.get('/static/data.json').then(successCallback, errorCallback)
  }

}

export default ajax
