class App.TourWidgetComponent extends Ember.Component
  classNames: ['tour-widget']
  ages: []
  sending: true

  +computed ages
  ageLabel: ->
    value = 0
    label = ""
    if "children" in @ages then value +=1
    if "middle" in @ages then value +=2
    if "adult" in @ages then value +=4
    switch value
      when 1 then return "начальная школа"
      when 2 then return "средняя школа"
      when 3 then return "для школьников"
      when 4 then return "для взрослых"
      when 6 then return "старший возраст"
      else return "подходит всем"

  click: ->
    if @sending then @sendAction('action1', @id) else @sending = true

  actions:
    linkToTour: ->
      # @sending = false
      # console.log @id
      @sendAction('action1', @id)
