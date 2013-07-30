App.SessionsDestroyRoute = Ember.Route.extend
  enter: ->
    controller = this.controllerFor('currentUser')
    controller.set('content', undefined)

    App.Session.find('current').then (session) ->
      session.deleteRecord()
      controller.store.commit()

    this.transitionTo('index')