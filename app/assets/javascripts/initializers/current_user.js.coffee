Ember.Application.initializer
  name: 'currentUser',

  initialize: (container) ->
    store = container.lookup('store:main')
    user = App.User.find('current')

    container.lookup('controller:currentUser').set('content', user)
    container.typeInjection('controller', 'currentUser', 'controller:currentUser')
