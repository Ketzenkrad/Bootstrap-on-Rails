class PagesController < ApplicationController
  def about
    #=Передача в шаблоны;
    @head = 'Страница обо мне'
    @text = 'Текст обо мне и прочее, для теста.'
  end
end
