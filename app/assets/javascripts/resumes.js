/* global Vue $ */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      resumes: [],
      message: 'FirstName LastNames Resume'
    },
    mounted: function() {
      $.get("http://localhost:3000/api/v1/resumes", function(responseData) {
        this.resumes = responseData;
        console.log(this.resumes);
        console.log(this.resumes[0].first_name);
      }.bind(this));
    }
  });
});