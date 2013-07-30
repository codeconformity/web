#= require spec_helper

describe "App.User", ->
  beforeEach( ->
    Test.store = TestUtil.lookupStore()
  )

  it "is a DS.Model", ->
    assert.ok App.User
    assert.ok DS.Model.detect(App.User)

  describe "fullName", ->
    it "returns the users full name", ->
      Ember.run( ->
        Test.contact = App.User.createRecord firstName: 'John', lastName: 'Doe'
      )
      expect(Test.contact.get('fullName')).to.equal 'John Doe'
