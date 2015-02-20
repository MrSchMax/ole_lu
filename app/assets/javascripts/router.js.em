App.Router.reopen
  location: 'auto'
  rootURL: '/'
App.Router.map ->
  @resource 'tours', path: '/', ->
  @resource 'tour', path: '/tours/:tour_id'
