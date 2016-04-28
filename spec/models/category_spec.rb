require 'rails_helper'

RSpec.describe Category, type: :model do
  it { is_expected.to validate_precence_of (:name)}
end
