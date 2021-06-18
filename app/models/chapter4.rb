# class Chapter4 < ApplicationRecord
# ４章配列の繰り返し処理

puts [].class

# 配列の中に配列を入れることも可能
arraies = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]
puts arraies
puts arraies[2]

# 配列の要素削除
a = [1, 2, 3]
a.delete_at(0)
puts a

# 値の更新・追加
b = [1, 2, 3]

b[0] = 50
puts b

# インデックス番号を指定して追加
b = [1, 2, 3]
b[3] = 4
puts b

# 配列の最後に要素を追加
b = []
b << 1
b << 10
b << 100
puts b

# ブロック(下記each文のdo~endまでを意味する)
numbers = [1 ,2, 3, 4, 5, 6]
sum = 0

numbers.each do |n|
  sum += n
end

puts sum

# 配列の要素削除
# delete, delete_at, delete_ifの違い
# delete()は引数の値と完全一致した値を削除
# delete_at()は引数の値をインデックス番号として配列を参照し、該当する要素を削除する
# delete_ifはdo~end(ブロック)を使い、様々な条件を指定可能

numbers = [1 ,2, 3, 4, 5, 6]
sum = 0

# do~endは{ }で書き換えることも可能(１行でまとめたいときなどに使うらしい)
numbers.each { |n|
  sum += n
}

puts sum

# mapメソッド(collectでも可＝エイリアスメソッド)
# 各要素に対してブロック内の処理をした戻り値を配列の要素とする新しい配列を作る
numbers = [1, 2, 3, 4, 5]

# new_numbers = numbers.map do |n| n * 10 end
new_numbers = numbers.map { |n| n * 10 }
puts new_numbers

# selectメソッド(エイリアスメソッドはfind_allメソッド)
# 各要素に対してブロックを評価し、その戻り値が真である要素を集めた配列を返す。

numbers = [1, 2, 3, 4, 5, 6]

# do ~ endの書き方でも可
even_numbers = numbers.select { |n| n.even? }
even_numbers = numbers.find_all { |n| n.even? }
puts even_numbers

# rejectメソッド
# 上記selectメソッドの逆
# 各要素に対してブロックを評価し、その戻り値が真である要素を「除外した」配列を返す。

numbers = [1, 2, 3, 4, 5, 6]
non_multiples_of_three = numbers.reject { |n| n % 3 == 0}
puts non_multiples_of_three

# findメソッドはブロックの戻り値が真になった最初の要素を返す。
# エイリアスメソッドはdetectメソッド

# 範囲(Range)
# 最初の値..最後の値(最後の値含む)
# 最初の値...最後の値(最後の値含まない)

# 範囲オブジェクトに変数を入れない場合は()で囲む必要がある
# ↓エラーになる
# 1..5.include?
# ↓正
# (1..5).include?

a = [1, 2, 3, 4, 5]

print a[0..2]
print a[0...2]

a = "abcdef"
print a[1..3]
print a[1...3]


# 「n以上m以下」などの判定をするメソッドの場合、<=などの比較演算子よりも範囲メソッドの方が便利

# ↓比較演算子の場合
# def liquid(temperature)
#   0 <= temperature && temperature < 100
# end

# ↓範囲メソッドの場合
def liquid(temperature)
  (0...100).include?(temperature)
end

puts liquid(50)
puts liquid(101)

# 範囲オブジェクトに対してto_aメソッドを呼び出すと値が連続する配列を作ることができる
a = (1..5).to_a
puts a
# 出力結果 [1, 2, 3, 4, 5]



# end