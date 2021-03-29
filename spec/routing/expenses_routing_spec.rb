require 'rails_helper'

RSpec.describe ExpensesController, type: :routing do
  describe 'routing' do
    it 'routes to #create' do
      expect(post: '/expenses').to route_to('expenses#create')
    end

    it 'routes to #new via GET' do
      expect(get: '/expenses/new').to route_to('expenses#new')
    end

    it 'routes to #index via GET' do
      expect(get: '/expenses').to route_to('expenses#index')
    end

    it 'routes to #destroy via DELETE' do
      expect(delete: '/expenses/1').to route_to('expenses#destroy', id: '1')
    end

    it 'routes to #external via PATCH' do
      expect(get: '/external').to route_to('expenses#external')
    end
  end
end
