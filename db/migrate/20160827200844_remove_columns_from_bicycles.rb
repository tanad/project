
class RemoveColumnsFromBicycles < ActiveRecord::Migration
    def change
     remove_column :bicycles, :String, :Image_url
    end
end


