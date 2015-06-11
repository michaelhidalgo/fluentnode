// Generated by CoffeeScript 1.8.0
(function() {
  var __slice = [].slice,
    __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  Array.prototype.add = function() {
    var item, value, _i, _len;
    value = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
    for (_i = 0, _len = value.length; _i < _len; _i++) {
      item = value[_i];
      this.push(item);
    }
    return this;
  };

  Array.prototype.contains = function(value) {
    var item, _i, _len;
    if (value instanceof Array) {
      for (_i = 0, _len = value.length; _i < _len; _i++) {
        item = value[_i];
        if (!(__indexOf.call(this, item) >= 0)) {
          return false;
        }
      }
      return true;
    } else {

    }
    return __indexOf.call(this, value) >= 0;
  };

  Array.prototype.empty = function() {
    return this.length === 0;
  };

  Array.prototype.item = function(index) {
    if (typeof index === 'number') {
      if ((this.length > index && index > -1)) {
        return this[index];
      }
    }
    return null;
  };

  Array.prototype.nth = Array.prototype.item;

  Array.prototype.first = function() {
    return this.item(0);
  };

  Array.prototype.second = function() {
    return this.item(1);
  };

  Array.prototype.third = function() {
    return this.item(2);
  };

  Array.prototype.fourth = function() {
    return this.item(3);
  };

  Array.prototype.last = function() {
    if (this.length) {
      return this[this.length - 1];
    } else {
      return null;
    }
  };

  Array.prototype.log = function() {
    this.str().log();
    return this;
  };

  Array.prototype.not_Contains = function(value) {
    return __indexOf.call(this, value) < 0;
  };

  Array.prototype.not_Empty = function() {
    return this.length !== 0;
  };

  Array.prototype.remove_At = function(index) {
    this.splice(index, 1);
    return this;
  };

  Array.prototype.remove_First = function() {
    return this.remove_At(0);
  };

  Array.prototype.size = function() {
    return this.length;
  };

  Array.prototype.starts_With = function(value) {
    var item, _i, _len, _results;
    _results = [];
    for (_i = 0, _len = this.length; _i < _len; _i++) {
      item = this[_i];
      if (value && item.starts_With(value)) {
        _results.push(item);
      }
    }
    return _results;
  };

  Array.prototype.take = function(size) {
    if (size === -1) {
      return this;
    } else {
      return this.slice(0, size);
    }
  };

  Array.prototype.unique = function() {
    var key, output, _i, _ref;
    output = {};
    for (key = _i = 0, _ref = this.length; 0 <= _ref ? _i < _ref : _i > _ref; key = 0 <= _ref ? ++_i : --_i) {
      output[this[key]] = this[key];
    }
    return output.keys();
  };

}).call(this);