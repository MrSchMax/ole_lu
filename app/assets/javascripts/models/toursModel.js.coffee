

App.Tour = DS.Model.extend
  title:       DS.attr 'string'
  description: DS.attr 'string'
  ages:        DS.attr 'array'
  minPrice:    DS.attr 'number'



App.ApplicationAdapter = DS.FixtureAdapter.extend()

App.Tour.FIXTURES = [
    id: '1'
    title: "Сказки А.С. Пушкина на улицах Москвы"
    description: "Обзорная интерактивная экскурсия по столице(Красная Площадь, Софийская набережная, Елоховский собор), основанная на известных  сказках А.С. Пушкина.  Ребята в игровой форме знакомятся со своим городом. Памятные призы всем!"
    ages: ["children"]
    minPrice: 550
  ,
    id: '2'
    title: "Где Ока ломана"
    description: "Интерактивная путевая экскурсия. Обзорная экскурсия по кремлю, программа «В гостях у ратоборцев»(музей древнерусского оружия, показательные бои, экспозиции в башнях кремлёвской стены), музей «Фабрика коломенской пастилы»"
    # ages: ["children", "middle"]
    ages: []
    minPrice: 1770
  ,
    id: '3'
    title: "В Залесье, в город славный"
    description: "Интерактивная путевая экскурсия. Веселая программа «В гостях у Берендея»,  мастер-класс росписи по дереву. «Ботик Петра», Александрова Гора, Спасо-Преображенский собор, загадочный Синий Камень, «Музей утюга», «Музей чайника»"
    ages: ["children", "middle"]
    minPrice: 1630
]

App.ToursRoute = Ember.Route.extend
  model: ->
    @store.find('tour')
