class CreateInteractionsTypes < ActiveRecord::Migration
  def change
    create_table :interactions_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
