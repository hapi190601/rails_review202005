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



# シンボル
# :をつけて任意の名前を定義する(:apple)
# シンボルはRuby内部では整数として管理されるため、文字列より高速に処理をすることが可能(よく使われるのはハッシュのキーとして)
# シンボルはイミュータブルであるため、破壊的な変更はできない

currencies = {"japan" => "yen", "us" => "dollar", "india" => "rupee"}

p currencies["japan"]

currencies = {:japan => "yen", :us => "dollar", :india => "rupee"}

# 上記"japan"より高速で値を取り出すことが可能
p currencies[:japan]


# シンボルがキーになる場合、省略した書き方がある
# キー => 値　→→→ シンボル: 値
# =>を使うより簡潔に書けるため、よく使われる

currencies = {japan: "yen", us: "dollar", india: "rupee"}