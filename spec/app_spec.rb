require 'app'

describe App do
  describe '#item_search' do
    it 'returns the results of a search' do
      app = App.new
        results = app.item_search('quadav')

        expect(results.first.name).to eq "'quadav_augury_shell'"
        expect(results.first.mob_drop_lists.first.rate).to eq 1000
        expect(results.first.mob_groups.first.mob_drop_list_id)
               .to eq results.first.mob_drop_lists.first.id

        expect(results.first.mob_pools.first.name).to eq "'Go_Bhu_Gascon'"
        expect(results.first.zones.first.name).to eq "'Beadeaux'"
    end
  end
end
