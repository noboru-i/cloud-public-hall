class CreateHalls < ActiveRecord::Migration
  def change
    create_table :halls do |t|

      t.string :name, null: false
      t.string :address1, null: false # 県
      t.string :address2, null: false # 市
      t.string :address3 # それ以降
      t.string :tel
      t.string :email
      t.integer :tatami_num # 畳数
      t.string :message
      t.timestamps null: false
    end
  end
end
