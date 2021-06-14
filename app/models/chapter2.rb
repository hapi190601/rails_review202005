# class Chapter2 < ApplicationRecord

=begin
コメント1
コメント2
コメント3
コメント4
=end

# ダブルクォーテーションは改行文字適応
puts "こんにちは\nさようなら"
# シングルクォーテーションは改行文字適応せず文字列として認識される
puts 'こんにちは\nさようなら'

# 変数展開
name = "Alice"
puts "私の名前は#{name}です"

# バックスラッシュの使い方(optionキー+¥)
puts 'He said "Don\'t speak!"'
puts "He said \"Don\'t speak!\""

# 数値内のアンダースコアは無視される
# 区切りをつけて見やすくする○
puts 1_000_000_000

# 変数にマイナス(-)をつけると値の正と負が逆転する
n = 1
puts -n

m = -1
puts -m

# 出力結果は0.5ではなく0
# 整数の割り算は小数点が切り捨てられる
puts 1 / 2

# 出力結果は0.5
# 小数点以下を表示したいのであれば「.0」をつける(どちらか片方で可)
puts 1.0 / 2.0
# puts 1 / 2.0
# puts 1.0 / 2

# .to_fメソッドを使うと整数を少数に変更することが可能(下記例では1を1.0に変更)
# Fewのf
n = 1
puts n.to_f
puts n.to_f / 2

# クラスメソッド(.class)
# データ型を返すメソッド
puts 'abc'.class

# ヒアドキュメント
a = <<TEXT
１行目
２行目
３行目
出力結果に改行が適応される
<<のあとのTEXTを識別子といい、自由に指定することができる
TEXT

puts a

# 配列の連結
a = [10, 20, 30].join
puts a

# 10進数以外の数値を10進数に変換
# 2進数(0bをつける)
puts 0b111111
# 8進数(0をつける)
puts 0377
# 16進数(0xをつける)
puts 0xff

# &&や||が真偽値を返すタイミング(基本は左から順に式を評価)
# 3
puts 1 && 2 && 3
# trueで処理が途中終了する
puts 1 && nil && 3
# falseで処理が途中終了する
puts 1 && false && 3
# = nilやfalseのように真偽が確定すると式の評価を終了し、最後に評価した値を返す

# false
puts nil || false

# 優先順位が低い条件式(上から優先順位高い)
=begin
!
&&
||
not
and , or
=end

# unlessの条件分岐はelsifのように複数指定できない

# elsifを多く使うコードはあまりよろしくない
# ＝＞case文を使う

country = "us"
case country
  when "japan"
    puts "こんにちは"
  when "us"
    puts "Hello"
  when "italy"
    puts "ciao"
  else
    puts "???"
end
# thenを使うと１行ずつにまとめることも可能(あまり使わない)
# 例↓
# case country
#   when "japan" then puts "こんにちは"
#   when "us" then puts "Hello"
#   when "italy" then puts "ciao"
#   else puts "???"
# end

# コロンを使った条件分岐(可読性を考慮して使い分ける)
# 雛形「式？真の場合の処理：偽だった場合の処理」

n = 11
n > 10 ? (puts "１０より大きい") : (puts "１０より少ない")
# end