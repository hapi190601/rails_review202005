# class Chapter5 < ApplicationRecord
# end


# ハッシュやシンボルについて

# ハッシュ＝連想配列(キーをもつ配列)
# {キー1 => 値1, キー2 => 値2, キー3 => 値3}
# 配列は[], ハッシュは{}
# ブロックdo~endの書き換えでも{}を使う為、混同しないように注意！

# ハッシュを使った繰り返し処理はブロック変数がキーと値の２つ分必要になる
currencies = {"japan" => "yen", "us" => "dollar", "india" => "rupee"}

currencies.each do |key, value|
  puts "#{key}の貨幣は#{value}です！"
end

# ※ブロック変数が１つの場合はキー、値を配列として受け取る