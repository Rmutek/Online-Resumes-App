/* global Vue $ RESUME_ID */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#appindex',
    data: {
      resumes: [],
      message: 'FirstName LastNames Resume'
    },
    computed: {

    },
    mounted: function() {
      $.get("http://localhost:3000/api/v1/resumes/", function(responseData) {
        this.resumes = responseData;
      });
    },
    methods: {



    }
  });
});
var app = new Vue({
  el: '#appshow',
  data: {
    resumes: [],
    message: 'FirstName LastNames Resume'
  },
  computed: {

  },
  mounted: function() {
    console.log('RESUME_ID', RESUME_ID);
    $.get("http://localhost:3000/api/v1/resumes/" + RESUME_ID, function(responseData) {
      this.resume = responseData;
    });
  },
  methods: {



  }
});