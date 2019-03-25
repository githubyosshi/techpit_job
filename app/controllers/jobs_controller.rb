class JobsController < ApplicationController
  #ヘルパーメソッド追加
  #コントローラーを動かす前にユーザーがログイン済であればアクセス許可。末尾のフィルタでログインしていなくてもshowページのアクセス許可
  before_action :authenticate_user!, except: :show

  def index
    @jobs = Job.all.includes(:user).where(user_id: current_user.id) #user_idがcurrent_user.idのjobを取得
    @entries = Entry.all.includes(:user,:job) # Entryを取得
  end
  #Jobオブジェクトを作成して@jobに代入
  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params) #job_paramsの値が入ったオブジェクトを作成

    #テキストを書き込みための画像を読み込む（4章でpublickフォルダに追加した画像）
    image = Magick::ImageList.new('./public/base_image.png')

    #画像に線や文字を描画するDrawオブジェクトの生成
    draw = Magick::Draw.new

    #cut_textの処理結果をtitleに代入
    title = cut_text(@job.title)

    #文字の描画（引数は、画像、幅、高さ、X座標、Y座標、描画する文字）
    draw.annotate(image, 0, 0, 0, -120, title) do

      #日本語対応可能なフォントにする
      self.font = 'app/assets/NotoSansJP-Bold.otf'   #別のフォントをダウンロードした方はNotoSansJP-Bold.otfを変更

      #フォントの塗りつぶし色
      self.fill = '#000'

      #描画基準位置(中央)
      self.gravity = Magick::CenterGravity

      #フォントの太さ
      self.font_weight = Magick::BoldWeight

      #フォント縁取り色(透過)
      self.stroke = 'transparent'

      #フォントサイズ（48pt）
      self.pointsize = 48
    end

    #下に定義したuniq_file_nameメソッドの処理結果のファイル名をimage_pathに代入
    image_path = image.write(uniq_file_name).filename

    #下に定義したcut_textメソッド処理の結果をimage_urlを代入
    image_url = cut_path(image_path)

    #@jobに作成画像であるimage_urlを追加
    @job.image_url = image_url

    #保存する
    if @job.save
      flash[:notice] = "投稿が保存されました"
      redirect_to @job
    else
      flash[:alert] = "投稿に失敗しました"
    end

    # if @job.save #もし求人が保存できたら
    #   flash[:notice] = "求人が保存されました" #フラッシュメッセージを出す
    #   redirect_to @job
    # else
    #   flash[:alert] = "募集作成に失敗しました"
    # end
  end
  #paramsとして送信されたidのレコードをfindメソッドで取得し@jobに代入
  def show
    @job = Job.find(params[:id])
    @entries = Entry.where(job_id:@job) # entriesテーブルからjob_idが@jobと同じものを取得
  end

  private

  #/./public/以下を""に切り取る
  def cut_path(url)
    url.sub(/\.\/public\//, "")
  end

  #.piblic/ランダムな文字列/.pngというファイル名に加工する
  def uniq_file_name
    "./public/#{SecureRandom.hex}.png"
  end

  #15文字ごとに改行を入れる
  def cut_text(text)
    text.scan(/.{1,15}/).join("\n")
  end

  def job_params
    params.require(:job).permit(:title, :content).merge(user_id: current_user.id)
  end
end
