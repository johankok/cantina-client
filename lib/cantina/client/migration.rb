class AddCantinaClientColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cantina_client_id, :integer
    add_index  :users, :cantina_client_id
  end
end