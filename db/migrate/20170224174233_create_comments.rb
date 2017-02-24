class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user
      t.text       :body
      t.references :target, polymorphic: true
    end
  end
end
