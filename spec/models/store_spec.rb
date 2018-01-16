require 'rails_helper'

RSpec.describe Store, type: :model do

  # Validation tests
  # ensure columns name, opening_time and closing_time are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:opening_time) }
  it { should validate_presence_of(:closing_time) }

end
