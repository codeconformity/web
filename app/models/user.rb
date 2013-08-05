class User
  include Datamappify::Entity

  attr_accessor :user_account

  attribute :email,       String
  attribute :uid,         String
  attribute :provider,    String
  attribute :nickname,    String
  attribute :first_name,  String
  attribute :last_name,   String
  attribute :avatar_url,  String

  validates :email, :uid, :provider, :nickname, presence: true
end
