class CreateDKadaiKanris < ActiveRecord::Migration[5.2]
  def change
    create_table :d_kadai_kanris do |t|
      t.string :kadai_title
      t.text :kadai_contents
			t.integer :kadai_cgr ,null:false
			t.string :kadai_tenp
			t.text :kadai_try
			t.text :kadai_try2
			t.text :kadai_try3
			t.timestamp :kadai_try_d
			t.timestamp :kadai_try2_d
			t.timestamp :kadai_try3_d
			t.string :kadai_try_w
			t.string :kadai_try2_w
			t.string :kadai_try3_w
			t.string :kadai_try_p
			t.string :kadai_try2_p
			t.string :kadai_try3_p
			t.string :kadai_cmt_psner
			t.text :kadai_cmt_ents
			t.string :kadai_cmt_notifier
			t.timestamp :kadai_inst_ymd ,default: -> { 'CURRENT_TIMESTAMP' },  null: false
			t.timestamp :kadai_updt_ymd ,default: -> { 'CURRENT_TIMESTAMP' }
			t.timestamp :kadai_del_ymd ,default: -> { 'CURRENT_TIMESTAMP' }
			references :kadai_del_flag
			t.integer :kadai_updt_id
			t.timestamp :kadai_updt_s_end
			t.timestamp :kadai_updt_t_end
			
      t.timestamps
    end
  end
end