class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, comment: '名前'
      t.timestamps
    end
  end
end
