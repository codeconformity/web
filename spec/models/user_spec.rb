require 'spec_helper'

describe User do
  it 'should not be valid without an email' do
    expect(subject).to validate_presence_of(:email)
  end

  it 'should not be valid without a uid' do
    expect(subject).to validate_presence_of(:uid)
  end

  it 'should not be valid without a provider' do
    expect(subject).to validate_presence_of(:provider)
  end

  it 'should not be valid without a nickname' do
    expect(subject).to validate_presence_of(:nickname)
  end
end
