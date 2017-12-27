module Pepabo
  module Kokugo
    VERSION = '0.1.0'

    CONVERT_RULES = {
      'き' => 'ピ',
      'ち' => 'ピ',
      'む' => 'プ',
    }

    module_function

    def convert(string)
      val = ''

      string.chars.each { |char|
        val += CONVERT_RULES[char]
      }

      val
    end
  end
end
