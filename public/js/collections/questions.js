define([
  'jQuery',
  'Underscore',
  'Backbone',
  'models/questions'
], function($, _, Backbone, questionsModel) {
  var questionsCollection = Backbone.Collection.extend({
    model: questionsModel, 
    url: function() {
      if (this.id != undefined) {
        //return "http://api.elysedougherty.com/question/" + this.id;
	return "http://localhost:3000/question/" + this.id;
      }
      if (window.sessionStorage["tag"] != undefined && window.sessionStorage["tag"] != "") {
	//return "http://api.elysedougherty.com/tag/" + window.sessionStorage["tag"];
	return "http://localhost:3000/tag/" + window.sessionStorage["tag"];
      }
      //return "http://api.elysedougherty.com/question/";
      return "http://localhost:3000/question";
    }
  }); 
  return questionsCollection;
});
