# class Rgbconversion < ApplicationRecord
# RGB変換プログラムの作成

# 10進数を16進数に変換する
def to_hex(r,g,b)
  # 自分が書いたコード
  # first = r.to_s(16).rjust(2, "0")
  # second = g.to_s(16).rjust(2, "0")
  # third = b.to_s(16).rjust(2, "0")
  # "#" + first + second + third

  # 参考書のリファクタリングしたもの同じ処理をeachに書き換えている
  hex = "#"
  [r, g, b].each do |n|
    # 文字列の結合
    hex += n.to_s(16).rjust(2, "0")
  end
  hex
end



# 出力結果 #ffffff
puts to_hex(255, 255, 255)
# 出力結果 #000000
puts to_hex(0, 0, 0)
# 出力結果 #043c78
puts to_hex(4, 60, 120)


# 16進数を10進数に変換する
def to_ints(rgb)
  # 0は#
  first = rgb[1..2]
  second = rgb[3..4]
  third = rgb[5..6]

  [first, second, third].map do |n|
    # 配列の末尾に要素を追加
    n.hex
  end
end

print to_ints('#000000')
print to_ints('#ffffff')
print to_ints('#043c78')
# end
