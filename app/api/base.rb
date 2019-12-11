require 'grape-swagger'
class Base < Grape::API
  format :json

  mount Articles
  
  # TODO: より良い説明を加える
  add_swagger_documentation(
    # api_version: 'v1',
    base_path: '/',
    format: :json,
    info: {
      title: 'Schema-Driven-Development example with Grape ecosystem projects',
      description: 'スキーマ駆動開発とGrapeの解説のために作成されたサンプルです',
      contact_name: 'Seiga Hayashi',
      contact_email: 'gagagaseiga@email.com',
    }
  )
end
