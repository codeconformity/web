App.AuthenticatedRoute = Ember.Route.extend
  beforeModel: (transition) ->
    if !this.controllerFor('login').get('token')
      this.redirectToLogin(transition)

  redirectToLogin: (transition) ->
    alert 'You must login'
    this.transitionTo('sessions.new')

  events:
    error: (reason, transition) ->
      if reason.status == 401
        redirectToLogin(transition)
      else
        alert 'Something went wrong'