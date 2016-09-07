# frozen_string_literal: true
require 'rails_helper'

RSpec.describe CharacterUpdaterJob do
  describe '#perform' do
    it 'calls character updater and broadcaster' do
      character = instance_double('Character', updated_at: Time.current)
      expect(CharacterUpdater).to receive(:call).with(character) { character }
      expect(CharacterUpdateBroadcaster).to receive(:call).with(character, character.updated_at)

      subject.perform(character)
    end

    it 'handles Armory errors' do
      character = instance_double('Character', updated_at: Time.current)
      expect(CharacterUpdater).to receive(:call).and_raise(Armory::ServerError)

      expect { described_class.perform_now(character) }.not_to raise_error
    end
  end
end
