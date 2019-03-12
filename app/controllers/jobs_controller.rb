class JobsController < ApplicationController
  #ヘルパーメソッド追加
  #コントローラーを動かす前にユーザーがログイン済であればアクセス許可。末尾のフィルタでログインしていなくてもshowページのアクセス許可
  before_action :authenticate_user!, except: :show

  def index
  end
  #Jobオブジェクトを作成して@jobに代入
  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params) #job_paramsの値が入ったオブジェクトを作成
    if @job.save #もし求人が保存できたら
      flash[:notice] = "求人が保存されました" #フラッシュメッセージを出す
      redirect_to @job
    else
      flash[:alert] = "募集作成に失敗しました"
    end
  end
  #paramsとして送信されたidのレコードをfindメソッドで取得し@jobに代入
  def show
    @job = Job.find(params[:id])
  end

  private

  def job_params
    params.require(:job).permit(:title, :content).merge(user_id: current_user.id)
  end
end
