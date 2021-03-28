require 'rails_helper'

RSpec.describe GroupsController, type: :routing do
  describe 'routing' do
    it 'routes to #create' do
      expect(post: '/groups').to route_to('groups#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/groups/1').to route_to('groups#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/groups/1').to route_to('groups#update', id: '1')
    end
  end
end
