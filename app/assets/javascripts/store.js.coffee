# http://emberjs.com/guides/models/defining-a-store/

DS.RESTAdapter.reopen
  namespace: 'api/v1'

App.Store = DS.Store.extend
  revision: 12
  adapter: DS.RESTAdapter.create()
