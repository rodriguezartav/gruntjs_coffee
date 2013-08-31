(function() {
  var Index;

  Index = (function() {
    function Index() {}

    Index.testOk = function() {
      return "ok 1 2";
    };

    return Index;

  })();

  module.exports = Index;

}).call(this);
;(function() {
  var Other,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  Other = (function() {
    function Other() {
      this.test = __bind(this.test, this);
    }

    Other.prototype.test = function() {
      return "this is another class";
    };

    return Other;

  })();

  module.exports = Other;

}).call(this);
