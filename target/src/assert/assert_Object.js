// Generated by CoffeeScript 1.8.0
(function() {
  var assert;

  assert = require('assert');

  Object.defineProperty(Object.prototype, 'assert_Is_Equal_To', {
    enumerable: false,
    writable: true,
    value: function(target) {
      assert.deepEqual(this, target);
      return this;
    }
  });

  Object.defineProperty(Object.prototype, 'assert_Is_Instance_Of', {
    enumerable: false,
    writable: true,
    value: function(target) {
      (this instanceof target).assert_Is_True("object was not of expected type/instance");
      return this;
    }
  });

  Object.defineProperty(Object.prototype, 'assert_Is_Not_Equal_To', {
    enumerable: false,
    writable: true,
    value: function(target) {
      assert.notDeepEqual(this, target);
      return this;
    }
  });

  Object.defineProperty(Object.prototype, 'assert_Is_Object', {
    enumerable: false,
    writable: true,
    value: function(target) {
      assert.equal(typeof this, 'object');
      return this;
    }
  });

  Object.defineProperty(Object.prototype, 'assert_Is_Null', {
    enumerable: false,
    writable: true,
    value: function(target) {
      (target === null).assert_Is_True("expected value to be null:" + target);
      return null;
    }
  });

  Object.defineProperty(Object.prototype, 'assert_Is_Not_Null', {
    enumerable: false,
    writable: true,
    value: function(target) {
      (target === null).assert_Is_False("expected value to not be null");
      return target;
    }
  });

  Object.defineProperty(Object.prototype, 'assert_Is_Undefined', {
    enumerable: false,
    writable: true,
    value: function(target) {
      (typeof target === 'undefined').assert_Is_True("expected value to be undefined:" + target);
      return null;
    }
  });

  Object.defineProperty(Object.prototype, 'assert_Is_Not_Undefined', {
    enumerable: false,
    writable: true,
    value: function(target) {
      (typeof target === 'undefined').assert_Is_False("expected value to not be undefined");
      return target;
    }
  });

  Object.defineProperty(Object.prototype, 'assert_Instance_Of', {
    enumerable: false,
    writable: true,
    value: Object.prototype.assert_Is_Instance_Of
  });

  Object.defineProperty(Object.prototype, 'assert_Is', {
    enumerable: false,
    writable: true,
    value: Object.prototype.assert_Is_Equal_To
  });

  Object.defineProperty(Object.prototype, 'assert_Is_Not', {
    enumerable: false,
    writable: true,
    value: Object.prototype.assert_Is_Not_Equal_To
  });

}).call(this);