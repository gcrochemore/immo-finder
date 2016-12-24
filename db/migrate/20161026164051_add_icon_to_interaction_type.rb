class AddIconToInteractionType < ActiveRecord::Migration
  def change
  	change_table :interactions_types do |t|
      t.string :icon
    end
  end
end
