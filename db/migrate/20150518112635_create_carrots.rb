class CreateCarrots < ActiveRecord::Migration
  def change
    create_table :carrots do |t|
      t.string :name
      t.references :bunny

      t.timestamps
    end
  end
end
