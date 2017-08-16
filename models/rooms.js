/ Import the ORM to create functions that will interact with the database.
var orm = require("../config/orm.js");

var rooms = {
  all: function(cb) {
    orm.all("rooms", function(res) {
      cb(res);
    });
  },
  // The variables cols and vals are arrays.
  create: function(cols, vals, cb) {
    orm.create("rooms", cols, vals, function(res) {
      cb(res);
    });
  },
  update: function(objColVals, condition, cb) {
    orm.update("rooms", objColVals, condition, function(res) {
      cb(res);
    });
  }
};

// Export the database functions for the controller (gameController.js).
module.exports = rooms;

