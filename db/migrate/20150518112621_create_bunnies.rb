class CreateBunnies < ActiveRecord::Migration
  def change
    create_table :bunnies do |t|
      t.string :name

      t.timestamps
    end
  end
end
