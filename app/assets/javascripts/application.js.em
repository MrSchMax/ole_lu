#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require app

# for more details see: http://emberjs.com/guides/application/
window.App = Ember.Application.create()

DS.ArrayTransform = DS.Transform.extend(
  deserialize: (serialized) ->
    if Ember.typeOf(serialized) == 'array' then serialized else []
  serialize: (deserialized) ->
    type = Ember.typeOf(deserialized)
    if type == 'array'
      deserialized
    else if type == 'string'
      deserialized.split(',').map (item) ->
        jQuery.trim item
    else
      []
)

App.register 'transform:array', DS.ArrayTransform
