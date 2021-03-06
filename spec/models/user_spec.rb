require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build(:user) }

  it { should have_db_column :first_name }
  it { should have_db_column :last_name }
  it { should have_db_column :email }
  it { should have_db_column :encrypted_password }
  it { should have_db_column :reset_password_token }
  it { should have_db_column :reset_password_sent_at }
  it { should have_db_column :remember_created_at }
  it { should have_db_column :sign_in_count }
  it { should have_db_column :current_sign_in_at }
  it { should have_db_column :last_sign_in_at }
  it { should have_db_column :current_sign_in_ip }
  it { should have_db_column :last_sign_in_ip }

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
end
