class TrnKadaiKanri < ApplicationRecord
  
  #期限のアクセサー（画面入力用）
  attr_accessor :kadai_limit_str
  
  scope :by_kadai_status, ->(kadai_status){
    if kadai_status.present?
      #bool型の変数
      kadai_status_bool = true
      if kadai_status == "true"
        kadai_status_bool = true
      else
        kadai_status_bool = false
      end
      where('kadai_status = ?', kadai_status_bool)
    end
  }
end