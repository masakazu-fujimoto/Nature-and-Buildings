require 'rails_helper'

RSpec.describe Photo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  before do
    @photo = FactoryBot.build(:photo)
  end

  describe '写真の保存' do
    context '写真が投稿できる場合' do
      it 'nameとtext、imageが存在すれば登録できる' do
        expect(@photo).to be_valid
      end
    end
    context '写真が投稿できない場合' do
      it 'テキストが空では投稿できない' do
        @photo.text = ''
        @photo.valid?
        expect(@photo.errors.full_messages).to include("Text can't be blank")
      end     
      it 'ユーザーが紐付いていなければ投稿できない' do
      end
    end
  end
end

end
