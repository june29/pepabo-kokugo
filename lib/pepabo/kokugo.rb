module Pepabo
  class Kokugo
    VERSION = '0.1.0'

    CONVERT_RULES = {
      %w(あ か さ た な は ま や ら わ) => 'パ',
      %w(い き し ち に ひ み    り ゐ) => 'ピ',
      %w(う く す つ ぬ ふ む ゆ る   ) => 'プ',
      %w(え け せ て ね へ め    れ ゑ) => 'ペ',
      %w(お こ そ と の ほ も よ ろ を) => 'ボ',
      %w(   が ざ だ    ば            ) => 'パ',
      %w(   ぎ じ ぢ    び            ) => 'ピ',
      %w(   ぐ ず づ    ぶ            ) => 'プ',
      %w(   げ ぜ で    べ            ) => 'ペ',
      %w(   ご ぞ ど    ぼ            ) => 'ボ',
      %w(               ぱ            ) => 'パ',
      %w(               ぴ            ) => 'ピ',
      %w(               ぷ            ) => 'プ',
      %w(               ぺ            ) => 'ペ',
      %w(               ぽ            ) => 'ボ',
      %w(                           ん) => 'ン',
      %w(         っ                  ) => 'ッ',
    }

    def convert(string)
      string.chars.map do |char|
        char_for(char)
      end.join
    end

    private

    def char_for(char)
      CONVERT_RULES.each do |chars, replace|
        chars.each do |c|
          if char == c || char.tr('ァ-ン', 'ぁ-ん') == c
            return replace
          end
        end
      end
      char
    end
  end
end
