class PostsController < ApplicationController
  ###функция логики
  def index
    ###обработка главной страницы;
  end
  #Новые посты
  def new
    ###новый пост;
  end
  #поиск поста по id[по умолчанию]
  def show
    @post = Post.find(params[:id])
  end
  def create
    ###создание нового поста;
    #выводим текст из параметров;
    # render plain: params[:post].inspect
    #параметры от формы;
    @post = Post.new(post_params)
    #сохранить пост
    @post.save
    #перенаправлять на новую страницу
    redirect_to @post
  end
  #данные для передачи
  private def post_params
    #берем параметры, запрашиваем и указываем форму с разрешенными полями
    params.require(:post).permit(:title, :body)
  end
end
