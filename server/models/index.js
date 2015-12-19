var db = require('../db');

module.exports = {
  messages: {
    get: function () {
      db.connection.query('SELECT * from messages', function(err, rows, fields) {
        if (!err)
          return rows;
        else
          console.log('Error while performing Query.');
      });
      // db.connection.end();
    }, // a function which produces all the messages
    post: function () {} // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

