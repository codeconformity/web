# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ()->
  @resource 'sessions', ->
    @route 'new'
    @route 'destroy'
