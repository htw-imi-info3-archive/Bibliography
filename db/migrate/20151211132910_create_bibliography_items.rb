class CreateBibliographyItems < ActiveRecord::Migration
  def change
    create_table :bibliography_items do |t|
      t.string :titel
      t.string :author
      t.string :source
      t.date :accessed

      t.timestamps null: false
    end
  end
end
