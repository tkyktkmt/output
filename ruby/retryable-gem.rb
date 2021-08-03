require "retryable"

# 例1) 最も単純な例

# ブロック引数はそれぞれ retries: 現在再試行回数(0〜n-1), 
# exception: 例外オブジェクト ( retries == 0 のとき exception == nil )

# 引数なしのとき、デフォルトのオプション
# （「全ての例外を捕まえる」「試行回数2回まで」「sleep 1秒」等）で動作
Retryable.retryable do |retries, exception|
  puts "run crazy code"
  1/0
end

# 例2) 「ZeroDivisionErrorだけを捕まえる」「試行回数5回まで」
Retryable.retryable(:on => [ ZeroDivisionError ], :tries => 5) do |retries, exception|
  # 例外による再試行状態にあるとき（retries > 0）、メッセージを出力
  puts "try #{retries} failed with exception: #{exception}" if retries > 0
  1/0
end

# 例3) 5回試行しても失敗するような場合は次のループ処理に移る
url_array.each do |url|
  html = Retryable.retryable(:tries => 6) do |r, e|
    next if r == 5
    open(url, &:read)
  end

  # nokogiri = Nokogiri::HTML(html)
  # ...
end