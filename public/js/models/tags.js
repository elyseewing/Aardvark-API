define([
  'Underscore',
  'Backbone'
], function(_, Backbone) {
  var tagsModel = Backbone.Model.extend({
    initialize: function() {

    },
    url: function() {
      if (this.id != undefined) {
        //return "http://api.elysedougherty.com/tag/" + this.id;
	return "http://localhost:3000/tag/" + this.id;
      }
      //return "http://api.elysedougherty.com/tag";
      return "http://localhost:3000/tag";
    }
  });

  return tagsModel;
});
