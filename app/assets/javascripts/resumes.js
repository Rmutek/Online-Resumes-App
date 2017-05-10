/* global Vue $ */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      resumes: [],
      message: 'FirstName LastNames Resume'
    },
    mounted: function() {
      $.get("api/v1/resumes", function(responseData) {
        this.resumes = responseData;
      });
    }
  });
});