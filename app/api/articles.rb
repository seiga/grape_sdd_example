class Articles < Grape::API
  resources :articles do
    desc '記事を新規登録します' do
      detail '記事の新規登録'
      success Entities::ArticleEntity
    end
    params do
      requires :title, type: String, documentation: {param_type: 'body'}, desc: '新規記事タイトル', default: '新規記事タイトル例'
      requires :content, type: String, documentation: {param_type: 'body'}, desc: '新規記事本文', default: '新規記事本文例'
    end
    post do

    end
  end
end
