class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.integer :position
      t.boolean :visible, :default => true
      t.string :permalink
      t.references :subject, index: true

      t.timestamps null: false
    end
    add_foreign_key :pages, :subjects
  end
end
