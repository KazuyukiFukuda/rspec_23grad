require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validation' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:published_at) }
  end
end
