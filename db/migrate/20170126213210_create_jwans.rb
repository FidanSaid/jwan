class CreateJwans < ActiveRecord::Migration
  def change
    create_table :jwans do |t|

      t.timestamps null: false
    end
  end
end
