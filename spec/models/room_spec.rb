require 'rails_helper'

RSpec.describe Room, type: :model do
  subject { build(:room) }

  it { should have_db_column :name }
  it { should have_db_column :capacity }
  it { should have_db_column :rate }
  it { should have_db_column :discount }
  it { should have_db_column :notes }
end
