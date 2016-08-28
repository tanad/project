
class RemoveColumnsFromBicycles < ActiveRecord::Migration
    def change
     remove_column :bicycles, :string, :image_url
    end
end


