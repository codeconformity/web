App.User = DS.Model.extend
  firstName:    DS.attr('string')
  lastName:     DS.attr('string')
  email:        DS.attr('string')

  fullName: (->
    "#{this.get('firstName')} #{this.get('lastName')}"
  ).property('firstName', 'lastName')
