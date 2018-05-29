TrnKadaiKanri.delete_all
 
target = Date.today
TrnKadaiKanri.create!(
  pj_id:"1",
  hojn_id:"00001",
  menu_id:"01",
  kadai_s_id:"123456",
  kadai_title:"テスト時に障害発生",
  kadai_limit:target+1,
)
　end