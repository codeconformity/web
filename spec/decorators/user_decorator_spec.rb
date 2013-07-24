require 'spec_helper'

describe UserDecorator do
  let(:user) { double('User', first_name: 'Foo', last_name: 'Bar') }

  subject { described_class.new(user) }

  describe '#full_name' do
    it 'concatenates first and last names' do
      expect(subject.full_name).to eql('Foo Bar')
    end

    context 'when first name is blank' do
      before { user.stub(first_name: '') }

      it 'returns only last name' do
        expect(subject.full_name).to eql('Bar')
      end
    end

    context 'when last name is blank' do
      before { user.stub(last_name: '') }

      it 'returns only first name' do
        expect(subject.full_name).to eql('Foo')
      end
    end
  end
end
