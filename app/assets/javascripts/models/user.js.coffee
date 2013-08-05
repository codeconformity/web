App.User = DS.Model.extend
  firstName:    DS.attr('string')
  lastName:     DS.attr('string')
  email:        DS.attr('string')
  nickname:     DS.attr('string')
  uid:          DS.attr('string')
  provider:     DS.attr('string')
  avatar_url:   DS.attr('string')

  fullName: (->
    "#{this.get('firstName')} #{this.get('lastName')}"
  ).property('firstName', 'lastName')
