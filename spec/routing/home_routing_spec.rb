require 'rails_helper'

RSpec.describe 'Home Routes', type: :routing do
  it 'routes #index' do
    route = { controller: 'home', action: 'index' }
    expect(get: '/').to route_to(route)
  end  
end