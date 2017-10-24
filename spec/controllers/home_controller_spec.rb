require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe '#index' do
    let(:action) { get :index }

    it 'renders the index template' do
      action
      expect(response).to render_template :index
    end
  end
end
