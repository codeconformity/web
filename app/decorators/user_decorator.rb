class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    [first_name, last_name].delete_if(&:blank?).join(' ')
  end
end
