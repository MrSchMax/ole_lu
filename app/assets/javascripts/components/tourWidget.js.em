class App.TourWidgetComponent extends Ember.Component
  classNames: ['tour-widget']
  ages: []

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

    # if @ages.length == 0 return "подходит всем"
    # if @ages.length == 1
    #   if "children" in @ages then return "начальная школа"
    #   if "middle" in @ages then return "средняя школа"
    #   if "adult" in @ages then return "для взрослых"
    # # if @ages.length ==
    # return "подходит всем"
