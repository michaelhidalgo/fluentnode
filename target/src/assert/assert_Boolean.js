// Generated by CoffeeScript 1.8.0
(function() {
  var assert;

  assert = require('assert');

  Boolean.prototype.assert_False = function() {
    var message;
    message = "[assert_Is_False]";
    assert.equal(this, false, message);
    return false;
  };

  Boolean.prototype.assert_Is_False = Boolean.prototype.assert_False;

  Boolean.prototype.assert_Is_True = function(message) {
    message = message || "[assert_Is_True]";
    assert.equal(this, true, message);
    return true;
  };

  Boolean.prototype.assert_True = Boolean.prototype.assert_Is_True;

}).call(this);