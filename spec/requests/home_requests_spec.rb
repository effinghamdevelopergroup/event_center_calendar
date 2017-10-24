require 'rails_helper'

RSpec.describe 'Home Requests', type: :request do
  it 'renders the homepage' do
    get root_path
    expect(response.body).to include('Welcome to Event Center Calendar!')
  end
end