# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RankingQuery do
  describe '#call' do
    before do
      # Levels need to be > 110 so they are not randomly filtered
      Fabricate(:character, level: 111, region: 'eu', realm: 'shadowmoon', score: 200, guild_name: 'g')
      Fabricate(:character, level: 111, region: 'eu', realm: 'shadowmoon', score: 200, guild_name: 'g')
      Fabricate(:character, level: 111, region: 'us', realm: 'shadowmoon', score: 300)
      Fabricate(:character, level: 111, region: 'us', realm: 'illidan', score: 500)
    end

    it 'returns ranked characters' do
      characters = described_class.call(region: 'world', page: 1, per_page: 3)

      expect(characters.size).to eq(3)

      expect(characters[0].rank).to eq(1)
      expect(characters[0].score).to eq(500)

      %i[class_name faction id realm region].each do |field|
        expect(characters[0].public_send(field)).to be_present
      end

      expect(characters[1].rank).to eq(2)
      expect(characters[2].rank).to eq(3)
    end

    it 'returns characters ranked by region' do
      characters = described_class.call(region: 'eu', page: 1, per_page: 3)

      expect(characters.size).to eq(2)

      expect(characters[0].rank).to eq(1)
      expect(characters[0].realm).to eq('shadowmoon')

      expect { characters[0].guild_name }.to raise_error(ActiveModel::MissingAttributeError)

      expect(characters[1].rank).to eq(1)
    end

    it 'returns characters ranked by realm' do
      characters = described_class.call(region: 'eu', realm: 'shadowmoon', page: 1, per_page: 3)

      expect(characters.size).to eq(2)

      expect(characters[0].rank).to eq(1)
      expect(characters[0].guild_name).to be_present

      expect { characters[0].realm }.to raise_error(ActiveModel::MissingAttributeError)
      expect { characters[0].region }.to raise_error(ActiveModel::MissingAttributeError)

      expect(characters[1].rank).to eq(1)
    end

    it 'filters characters with data from before the 8.0.1 ilvl squish' do
      Fabricate(:character, level: 110, max_ilvl: 265, score: 1000)
      Fabricate(:character, level: 90, max_ilvl: 266)

      characters = described_class.call(region: 'world', page: 1, per_page: 6)

      expect(characters.size).to eq(5)
      expect(characters[0].rank).to eq(1)
    end
  end
end
