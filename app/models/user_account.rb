class UserAccount < ActiveRecord::Base
  devise :rememberable, :trackable, :omniauthable, omniauth_providers: [:github]
end
