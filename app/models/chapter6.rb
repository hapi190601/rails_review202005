# class Chapter6 < ApplicationRecord
# end

# 正規表現

# 例1
text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript are different.
TEXT

# プログラミング言語のみを抜き出す
# 出力結果["Ruby", "Python", "Java", "JavaScript"]
p text.scan(/[A-Z][A-Za-z]+/)


# 例2
text= <<TEXT
私の郵便番号は1234567です。
僕の住所は6770056 埼玉県さいたま市北区1234です。
TEXT

# 出力結果(郵便番号を正しくハイフン付きで表示)
# 私の郵便番号は123-4567です。
# 僕の住所は677-0056 埼玉県さいたま市北区1234です。
puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')
