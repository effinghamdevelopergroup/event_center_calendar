require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build(:user) }

  it { should have_db_column :first_name }
  it { should have_db_column :last_name }

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
end
