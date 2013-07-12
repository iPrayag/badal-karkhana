class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :title
      t.string :firstName
      t.string :lastName

      t.timestamps
    end
  end
end
