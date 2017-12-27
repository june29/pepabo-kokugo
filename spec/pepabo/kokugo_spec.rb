RSpec.describe Pepabo::Kokugo do
  it "has a version number" do
    expect(Pepabo::Kokugo::VERSION).not_to be nil
  end

  it "きちむ" do
    expect(Pepabo::Kokugo.convert('きちむ')).to eq('ピピプ')
  end

  it "こんにちは" do
    expect(Pepabo::Kokugo.convert('こんにちは')).to eq('ボプピピパ')
  end

  it "しぶやくさくらがおか" do
    expect(Pepabo::Kokugo.convert('しぶやくさくらがおか')).to eq('ピプパプパプパパボパ')
  end

  it "かもがわシーワールド" do
    expect(Pepabo::Kokugo.convert('かもがわシーワールド')).to eq('パボパパピーパープボ')
  end

  it "やりたいことが、すぐできる。" do
    expect(Pepabo::Kokugo.convert('やりたいことが、すぐできる。')).to eq('パピパピボボパ、ププペピプ。')
  end

  it "いつでもどこでも楽しめる。" do
    expect(Pepabo::Kokugo.convert('いつでもどこでも楽しめる。')).to eq('ピプペボボボペボパボピペプ。')
  end

  it "いのちの輝きと、ふれあえる海。" do
    expect(Pepabo::Kokugo.convert('いのちの輝きと、ふれあえる海。')).to eq('ピボピボパパパピボ、プペパペププピ。')
  end

  it "明るく、にこにこ、大きな声。" do
    expect(Pepabo::Kokugo.convert('明るく、にこにこ、大きな声。')).to eq('パパププ、ピポピポ、ボボピパボペ。')
  end
end
