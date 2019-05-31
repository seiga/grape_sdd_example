require "rails_helper"

describe '/articles' do
  describe 'POST /articles' do
    subject { post '/articles', params: { title: title, content: content } }

    context 'with vaiid request' do
      let(:title) { '記事タイトル' }
      let(:content) { '記事内容' }
      it 'returns success response' do
        subject
        expect(response).to have_http_status(:success)
      end
    end
  end
end
