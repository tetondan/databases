var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
      var data = models.messages.get(function(err, data){
        console.log(data)
      });
      // res.success(console.log(data));
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      //post body data
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {}
  }
};

