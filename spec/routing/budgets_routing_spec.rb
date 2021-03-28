require 'rails_helper'

RSpec.describe BudgetsController, type: :routing do
  describe 'routing' do
    it 'routes to #create' do
      expect(post: '/budgets').to route_to('budgets#create')
    end

    it 'routes to #new via GET' do
      expect(get: '/budgets/new').to route_to('budgets#new')
    end

    it 'routes to #index via GET' do
      expect(get: '/budgets').to route_to('budgets#index')
    end

    it 'routes to #destroy via DELETE' do
      expect(delete: '/budgets/1').to route_to('budgets#destroy', id: '1')
    end

    it 'routes to #show via GET' do
      expect(get: '/budgets/1').to route_to('budgets#show', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/budgets/1').to route_to('budgets#update', id: '1')
    end
  end
end