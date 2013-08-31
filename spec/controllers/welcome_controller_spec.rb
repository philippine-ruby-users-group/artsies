require 'spec_helper'

describe WelcomeController do

  describe '#index' do
    it 'returns a valid page' do
      get :index
      expect(response.status).to eq(200)
    end
  end

end
