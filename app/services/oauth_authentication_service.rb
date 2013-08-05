class OAuthAuthenticationService
  def process(auth_hash)
    find_user(auth_hash) || build_user(auth_hash).tap do |user|
      user.email        = auth_hash.info.email
      user.nickname     = auth_hash.info.nickname
      user.avatar_url   = auth_hash.info.image
      user.first_name, user.last_name = auth_hash.info.name.to_s.split
      user.first_name   ||= auth_hash.info.first_name
      user.last_name    ||= auth_hash.info.last_name
      UserRepository.save(user)
    end
  end

  def find_user(auth_hash)
    UserRepository.where(provider: auth_hash.provider, uid: auth_hash.uid).
      first
  end

  def build_user(auth_hash)
    User.new(provider: auth_hash.provider, uid: auth_hash.uid)
  end
end
