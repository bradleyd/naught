require 'spec_helper'

describe 'base class set' do
  subject(:null) { null_class.new }
  let(:null_class) {
    Naught.build do |b|
      b.base_class = Object
    end
  }

  it 'should set the base_class' do
    expect(null_class.ancestors).to include(Object)
  end
end
