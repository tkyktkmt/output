#if __name__ == "__main__": を記述するとpython ファイル名.py で直接実行された場合のみ呼び出される

def main():
    print("Hello")

main()
#$ python hello.py => Hello
>>> import hello  # この時点で「Hello」が表示されてしまう
Hello
>>>


def main():
    print("Hello")

if __name__ == "__main__": 
    main()                
# __name__ はpythonでは特殊変数で、pythonファイルのモジュール名が格納される
# Pythonファイルをスクリプトとして直接実行した場合に自動"__main__"が格納
#$ python hello.py => Hello
>>> import hello  # 「Hello」表示されない
>>>

#import hello した：hello.py 内部で __name__ は "hello" という文字列になる
#python hello.py した：hello.py 内部で __name__ は "__main__" という文字列になる
