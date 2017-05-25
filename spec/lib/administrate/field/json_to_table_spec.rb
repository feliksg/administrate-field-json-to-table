require 'administrate/field/json_to_table'

describe Administrate::Field::JSONToTable do
  describe '#to_partial_path' do
    it 'returns a partial based on the page being rendered' do
      page = :show
      field = Administrate::Field::JSONToTable.new(:status, 'status', page)

      path = field.to_partial_path

      expect(path).to eq("/fields/json_to_table/#{page}")
    end
  end
end
