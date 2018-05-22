class Rocords < ActiveRecord::Migration[5.2]
  def change
        drop_table :d_kadai_kanris
        drop_table :trn_kadai_kanris
  end
end