class CreateSuperheros < ActiveRecord::Migration[8.0]
  def change
    create_table :superheros do |t|
      t.string :name
      t.string :power
      t.string :avatar

      t.timestamps
    end
  end
end
