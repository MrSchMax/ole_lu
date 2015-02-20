

App.Tour = DS.Model.extend
  imageSrc:       DS.attr 'string'
  title:       DS.attr 'string'
  description: DS.attr 'string'
  ages:        DS.attr 'array'
  minPrice:    DS.attr 'number'



App.ApplicationAdapter = DS.FixtureAdapter.extend()

App.Tour.FIXTURES = [
    id: '1'
    imageSrc: "tour1.jpg"
    title: "Сказки А.С. Пушкина на улицах Москвы"
    description: "Обзорная интерактивная экскурсия по столице(Красная Площадь, Софийская набережная, Елоховский собор), основанная на известных  сказках А.С. Пушкина.  Ребята в игровой форме знакомятся со своим городом. Памятные призы всем!"
    ages: ["children"]
    minPrice: 550
  ,
    id: '2'
    imageSrc: "tour2.jpg"
    title: "Где Ока ломана"
    description: "Интерактивная путевая экскурсия. Обзорная экскурсия по кремлю, программа «В гостях у ратоборцев»(музей древнерусского оружия, показательные бои, экспозиции в башнях кремлёвской стены), музей «Фабрика коломенской пастилы»"
    ages: ["children"]
    minPrice: 1770
  ,
    id: '3'
    imageSrc: "tour3.jpg"
    title: "В Залесье, в город славный"
    description: "Интерактивная путевая экскурсия. Веселая программа «В гостях у Берендея»,  мастер-класс росписи по дереву. «Ботик Петра», Александрова Гора, Спасо-Преображенский собор, загадочный Синий Камень, «Музей утюга», «Музей чайника»"
    ages: ["children"]
    minPrice: 1630
  ,
    id: '4'
    imageSrc: "tour4.jpg"
    title: "На озере, на клещене"
    description: "Интерактивная путевая экскурсия.  «Музей рождения сказки», встреча с персонажами русского фольклора, игровая программа. «Ботик Петра», Александрова Гора, Спасо-Преображенский собор, Синий Камень, «Музей утюга», «Музей чайника»"
    ages: ["children"]
    minPrice: 1340
  ,
    id: '5'
    imageSrc: "tour5.jpg"
    title: "Колыбель петрова флота"
    description: "Интерактивная путевая экскурсия. «Ботик Петра», Александрова Гора, Спасо-Преображенский собор, Никольский монастырь, загадочный Синий Камень, Никитский монастырь(столп и вериги Св. Никиты), «Музей утюга», «Музей чайника»"
    ages: ["children"]
    minPrice: 1120
  ,
    id: '6'
    imageSrc: "tour6.jpg"
    title: "Переславил грады все"
    description: "Интерактивная путевая экскурсия. Мастер-класс росписи по дереву. «Ботик Петра», Александрова Гора, древнейший Спасо-Преображенский собор, Никольский монастырь, загадочный Синий Камень, «Музей утюга», «Музей чайника»"
    ages: ["children"]
    minPrice: 1290
  ,
    id: '7'
    imageSrc: "tour7.jpg"
    title: "Кормят, одевают, лечат, радуют"
    description: "Интерактивная путевая экскурсия. Посещение Ботанического сада, рассказ об удивительном мире природы, посещение оранжерей с экзотическими растениями, мастер-класс или викторина с живыми призами на обратном пути."
    ages: ["children"]
    minPrice: 830
  ,
    # id: '8'
    # imageSrc: "tour8.jpg"
    # title: "В страну Витаминию"
    # ages: ["children"]
    # minPrice: 830

]

App.ToursRoute = Ember.Route.extend
  model: ->
    @store.find 'tour'
  actions :
    linkToTour: (tour_id) ->
      # @transitionTo '/tours/#{tour_id }'
      @transitionTo('/tours/' + tour_id)
      console.log(tour_id)
    linkToTour2: () ->
      # @transitionTo '/tours/#{tour_id }'
      @transitionTo('/tours/' + 1)
      console.log(tour_id)
      # @transitionTo('/tours/1')
# App.TourRoute = Ember.Route.extend
#   model: (params)->
#     @store.find 'tour', params.id
App.TourIndexRoute = Ember.Route.extend
  model: (params)->
    @store.find 'tour', params.id

# App.ToursController = Ember.ArrayController.extend


# App.TourController = Ember.ObjectController.extend
