require 'rails_helper'

RSpec.describe Review, type: :model do
  it { is_expected.to belong_to :game}
  it { is_expected.to validate_presence_of :comments}
end
