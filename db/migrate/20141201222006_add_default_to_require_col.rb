class AddDefaultToRequireCol < ActiveRecord::Migration
  def change
    change_column :events, :requires_id, :boolean, :default => false, :null => false
  end
end
