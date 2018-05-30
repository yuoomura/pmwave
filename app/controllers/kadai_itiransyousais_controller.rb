class KadaiItiransyousaisController < ApplicationController
      #一覧画面 表示のアクション
  def index

  #データの取得
  @kadai_itiransyousais = TrnKadaiKanri
    .by_kadai_status(params[:kadai_status])
    .paginate(page: params[:page], per_page: 5)
    .order('kadai_status asc, kadai_try_d asc')
 
  #No列の開始No
  @grid_no = 1
 
  #params[:page]がNullまたは空ではない場合
  if params[:page].present?
    #開始No = ページ × ページングサイズ
    @grid_no = (params[:page].to_i - 1) * 5 + 1
  end
  end

#照会画面 表示のアクション
def show

  #idで=TrnKadaiKanrisテーブルを取得
  @kadai_itiransyousai = TrnKadaiKanri.find(params[:id])

  #viewを表示（省略可）
  render "show"

end

  #登録画面 表示のアクション
  def new

  end

  #編集画面 表示のアクション
  def edit

  end

  #登録画面 登録ボタン押下時のアクション
  def create

  end

  #編集画面 更新ボタン押下時のアクション
  def update

  end

    #一覧画面 削除ボタン押下時のアクション
  def destroy
 
    #idでTrnKadaiKanrisテーブルを取得
    @kadai_itiransyousai = TrnKadaiKanri.find(params[:id])
 
    #削除処理（delete文発行）
    @kadai_itiransyousais.destroy
 
    #フラッシュ（一度きりのセッション）にメッセージを格納
    flash[:msg] = "削除しました。"
 
    #呼び出し元URLへリダイレクト
    redirect_to request.referer
 
  end
 
  #一覧画面 完了ボタン押下時のアクション
  def kadai_status
 
    #idでTrnKadaiKanrisテーブルを取得
    @kadai_itiransyousai = TrnKadaiKanri.find(params[:id])
 
    #kanryoにtrueをセット
    @kadai_itiransyousai. kadai_status = true
 
    #更新処理（update文発行）
    @kadai_itiransyousai.save
 
    #呼び出し元URLへリダイレクト
    redirect_to request.referer
 
  end
end
