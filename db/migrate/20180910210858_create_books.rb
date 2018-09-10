class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :authors
      t.string :sm_image
      t.string :bg_image
      t.text :description
      t.string :page_count

      t.timestamps null: false
    end
  end
end
