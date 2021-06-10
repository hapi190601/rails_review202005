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


# end

