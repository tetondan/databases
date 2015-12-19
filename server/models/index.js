var db = require('../db');

module.exports = {
  messages: {
    get: function (done) {
      db.connection.query('SELECT * from messages', function(err, rows, fields) {
        if (!err)
          done(null, rows);
          // return rows;
        else
          console.log('Error while performing Query.');
      });
      // db.connection.end();
    }, // a function which produces all the messages
    post: function (obj, done) {
      values = [obj.username, obj.text, obj.roomname];
      db.connection.query('INSERT INTO messages (username, text, roomname) VALUES(?, ?, ?)', values, function(err, result) {
        if (err) return done(err);
        done(null, result.insertId);
      })
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

