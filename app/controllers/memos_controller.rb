class MemosController < ApplicationController
  
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_memo, only: [:show, :edit, :update, :destroy]
  
  def index
    # @memos = Memo.all
    @memos = Memo.order(created_at: :DESC) 
    # desc -->내림차순
  end

  def new
  @memo = Memo.new
  end

  def create
  @memo = Memo.new(memo_params)
  # @memo.title = params[:memo][:title]
  # @memo.content = params[:memo][:content]
  # @memo.user_id = params[:memo][:user_id]
  @memo.save
  
  
  redirect_to @memo
  end

  def edit
    # @memo = Memo.find(params[:id])
  end

  def update
  # @memo = Memo.find(params[:id])
  # @memo.title = params[:memo][:title]
  # @memo.content = params[:memo][:content]
  # @memo.user_id = params[:memo][:user_id]
  # @memo.save
  @memo.update(memo_params)
    redirect_to @memo
  end

  def destroy
  # @memo = Memo.find(params[:id])
  @memo.destroy
   redirect_to memos_path
  end
  # rake routes참고하기
  
  private
  # 컨트롤러 안에서만 쓸수 있는 프라이빗 기능 뷰에서 불러올 수 없음.
  def set_memo
    @memo = Memo.find(params[:id])
  end
  
  def memo_params
    params.require(:memo).permit(:user_id, :title, :content)
    # 위에 세가지 빼고는 못들어옴. require(:모델명)
  end
  
  def show
    # @memo = Memo.find(params[:id])
    # form for 가아닌 url로 넘어가는 거라
  end
end
