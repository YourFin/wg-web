class CreatePeers < ActiveRecord::Migration[5.2]
  def change
    create_table :peers do |t|
      t.string :name
      t.string :public_key
      t.boolean :is_connected
      t.integer :endpoint_id

      t.timestamps
    end
  end
end
