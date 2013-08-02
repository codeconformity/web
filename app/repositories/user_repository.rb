class UserRepository
  include Datamappify::Repository

  for_entity User

  default_provider :ActiveRecord

  map_attribute :email,     to: 'UserAccount#email'
  map_attribute :uid,       to: 'UserAccount#uid'
  map_attribute :provider,  to: 'UserAccount#provider'
end
