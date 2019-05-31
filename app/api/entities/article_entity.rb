module Entities
  class ArticleEntity < Grape::Entity
    expose :id, documentation: {type: Integer, desc: '記事ID', example: 1}
    expose :title, documentation: {type: String, desc: '記事タイトル', example: '記事タイトル例'}
    expose :content, documentation: {type: String, desc: '記事本文', example: '記事本文例'}
  end
end
