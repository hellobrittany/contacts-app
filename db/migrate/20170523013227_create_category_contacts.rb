class CreateCategoryContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :category_contacts do |t|
      t.integer :category_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
