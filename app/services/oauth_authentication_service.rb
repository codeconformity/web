class OAuthAuthenticationService
  def process(auth_hash)
    user = User.where(provider: auth_hash.provider, uid: auth_hash.uid).
      first_or_create do |u|
        u.email = auth_hash.info.email
        u.nickname = auth_hash.info.nickname
        u.avatar_url = auth_hash.info.image
        u.first_name, u.last_name = auth_hash.info.name.to_s.split
        u.first_name ||= auth_hash.info.first_name
        u.last_name ||= auth_hash.info.last_name
      end

    user
  end
end
