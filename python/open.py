path = 'data/src/test.txt'

f = open(path)

print(type(f))
# <class '_io.TextIOWrapper'> 
#テキストファイルの場合はio.TextIOWrapper型として読み込まれる。

f.close() #open()の後はcloseで開いたファイルオブジェクトを閉じる必要がある

with open(path) as f:
    print(type(f))
# <class '_io.TextIOWrapper'>
# withを使うことでopen()後に自動close


with open(path) as f:
    s_line = f.readline() # ファイルオブジェクトを一行ずつ取得
    print(s_line)
# line 1
#


path_w = 'data/src/test_w.txt'

s = 'New file'

with open(path_w, mode='w') as f: #mode'w'は書き込み指定
    f.write(s)

with open(path_w) as f:
    print(f.read())
# New file
# mode一覧
# r:読み込み w:書き込み x:ファイル新規作成and保存 a:追記 r+:読み書き