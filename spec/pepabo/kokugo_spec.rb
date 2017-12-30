RSpec.describe Pepabo::Kokugo do
  describe 'VERSION' do
    it "has a version number" do
      expect(Pepabo::Kokugo::VERSION).not_to be nil
    end
  end

  describe '#convert' do
    [
      {
        original: 'きちむ',
        converted: 'ピピプ',
      },
      {
        original: 'こんにちは',
        converted: 'ボンピピパ',
      },
      {
        original: 'しぶやくさくらがおか',
        converted: 'ピプパプパプパパボパ',
      },
      {
        original: 'かもがわシーワールド',
        converted: 'パボパパピーパープボ',
      },
      {
        original: 'やりたいことが、すぐできる。',
        converted: 'パピパピボボパ、ププペピプ。',
      },
      {
        original: 'いつでもどこでも楽しめる。',
        converted: 'ピプペボボボペボ楽ピペプ。',
      },
      {
        original: 'いのちの輝きと、ふれあえる海。',
        converted: 'ピボピボ輝ピボ、プペパペプ海。',
      },
      {
        original: '明るく、にこにこ、大きな声。',
        converted: '明ププ、ピボピボ、大ピパ声。',
      },
      {
        original: 'もっとおもしろくできる',
        converted: 'ボッボボボピボプペピプ',
      },
      {
        original: 'ちょっとおもしろくできる',
        converted: 'ピョッボボボピボプペピプ',
      },
      {
        original: 'あぁ無情',
        converted: 'パァ無情',
      },
    ].each do |example|
      it do
        expect(Pepabo::Kokugo.new.convert(example[:original])).to eq(example[:converted])
      end
    end
  end
end
