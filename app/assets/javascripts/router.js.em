App.Router.reopen
  location: 'auto'
  rootURL: '/'
App.Router.map ->
  # location: 'auto'
  # rootURL: '/'
  @resource 'tours', path: '/'
