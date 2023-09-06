require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます
 
puts "1(新規でメモを作成)  2(既存のメモ編集する)"
memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

if memo_type == 1
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dをおします"
  
  write_memo = STDIN.read
  memo = write_memo.chomp
  CSV.open("#{file_name}.csv" , "w") do |csv|
  csv.puts ["#{memo}"]
  end
 
elsif memo_type == 2
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  
  puts "編集したい内容を記入してください"
  puts "完了したらCtrl + Dをおします"

  write_memo = STDIN.read
  memo = write_memo.chomp
  CSV.open("#{file_name}.csv" , "a") do |csv|
  csv.puts ["#{memo}"]
  end
else
  puts "1か2を入力"
end
# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。