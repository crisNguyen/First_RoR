class CreateStudentifs < ActiveRecord::Migration[6.1]
  def change
    create_table :studentifs do |t|
      t.string :firts_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :facebook

      t.timestamps
    end
  end
end
