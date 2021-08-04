begin
  1 / 0
rescue
  puts "何か問題が発生しました。"
end

begin
  1 / 0
rescue => e
  puts "何か問題が発生しました。"
  p e
end
puts 'ok'

#=> 何か問題が発生しました。
#=> #<ZeroDivisionError: divided by 0>
#=> ok

begin
  1 / 0
rescue => e
  p e.class
  p e.message
  p e.backtrace
end
#=> ZeroDivisionError
#=> "divided by 0"
#=> ["main.rb:2:in `/'", "main.rb:2:in `<main>'"]

begin
  1 / 0
rescue ZeroDivisionError
  puts "対象の例外やー。"
end
#=> 対象の例外やー。

begin 
  "no Error"
rescue => e
  p e.message # エラーはないので実行されません。
ensure 
  p "絶対実行" #=> 絶対実行
end

def method # メソッド直下ではbeginとendを省略できる。
  # エラーを発生させる可能性のあるコード。
 rescue => e 
  # エラー発生時の処理。
end

begin # 複数の例外処理。
  raise StandardError
  rescue StandardError, RangeError   
    p 'Standard or Range Error'
  rescue RuntimeError
    p 'Runtime Error'
  rescue => e
    p 'some other error'
end
#=> "Standard or Range Error"