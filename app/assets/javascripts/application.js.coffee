#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require handlebars
#= require ember
#= require ember-data
#= require ember-validations
#= require ember-easyForm
#= require_self
#= require app

# for more details see: http://emberjs.com/guides/application/
window.App = Ember.Application.create()

window.App.deferReadiness()

$ ->
  window.App.advanceReadiness()
