RSpec.describe Pepabo::Kokugo do
  describe 'VERSION' do
    it "has a version number" do
      expect(Pepabo::Kokugo::VERSION).not_to be nil
    end
  end

  describe '#convert' do
    it "きちむ" do
      expect(Pepabo::Kokugo.new.convert('きちむ')).to eq('ピピプ')
    end

    it "こんにちは" do
      expect(Pepabo::Kokugo.new.convert('こんにちは')).to eq('ボンピピパ')
    end

    it "しぶやくさくらがおか" do
      expect(Pepabo::Kokugo.new.convert('しぶやくさくらがおか')).to eq('ピプパプパプパパボパ')
    end

    it "かもがわシーワールド" do
      expect(Pepabo::Kokugo.new.convert('かもがわシーワールド')).to eq('パボパパピーパープボ')
    end

    it "やりたいことが、すぐできる。" do
      expect(Pepabo::Kokugo.new.convert('やりたいことが、すぐできる。')).to eq('パピパピボボパ、ププペピプ。')
    end

    it "いつでもどこでも楽しめる。" do
      expect(Pepabo::Kokugo.new.convert('いつでもどこでも楽しめる。')).to eq('ピプペボボボペボ楽ピペプ。')
    end

    it "いのちの輝きと、ふれあえる海。" do
      expect(Pepabo::Kokugo.new.convert('いのちの輝きと、ふれあえる海。')).to eq('ピボピボ輝ピボ、プペパペプ海。')
    end

    it "明るく、にこにこ、大きな声。" do
      expect(Pepabo::Kokugo.new.convert('明るく、にこにこ、大きな声。')).to eq('明ププ、ピボピボ、大ピパ声。')
    end

    it "もっとおもしろくできる" do
      expect(Pepabo::Kokugo.new.convert('もっとおもしろくできる')).to eq('ボッボボボピボプペピプ')
    end

    it "ちょっとおもしろくできる" do
      expect(Pepabo::Kokugo.new.convert('ちょっとおもしろくできる')).to eq('ピョッボボボピボプペピプ')
    end

    it "あぁ無情" do
      expect(Pepabo::Kokugo.new.convert('あぁ無情')).to eq('パァ無情')
    end
  end
end
