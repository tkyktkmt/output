#文字列に変数を組み込む時に便利

#失敗例
for i in range(1,10):
    ans = 2*i #計算結果を変数ansに格納
    print('2 x i = ans ')

#成功例
for i in range(1,10):
    ans = 2*i
    print('2x{}={}'.format(i,ans))

#使い方
name = 'オレンジ'
price = 200
print('{}の価格は{}円です'.format(name,price)) #オレンジの価格は200円です

#文法
('{}は{}です'.format(変数１,変数２)) #{}の中に何も書かなければ変数1から順番に割り当てられていきます。

#もし{}の中にインデックス番号を書いた場合は、インデックス番号通りに割り当てられていきます。
name = 'オレンジ'
price = 200
name2 = 'リンゴ'
price2 = 150
print('{2}の価格は{3}円です'.format(name,price,name2,price2)) #リンゴの価格は150円です

fruits = ["orange","apple","banana"]
vegetables = ["TOMATO","CABBEGE","POTATO"]
print("バスケットの中には{1[0]}、{0[1]}、{1[2]}があります。".format(fruits,vegetables))
#バスケットの中にはTOMATO、apple、POTATOがあります

#表示する位置を指定(他にもn進法の指定も可能)
tag = '出力例'
print('{0:<15}'.format(tag)) #左詰めで出力
print('{0:^15}'.format(tag)) #中央寄せで出力
print('{0:>15}'.format(tag)) #右詰めで出力

#出力例
      #出力例
            #出力例
