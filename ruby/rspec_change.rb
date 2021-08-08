it '複数のchangeを見るぞ' do
  expect { subject }.to change { x }.by(1).
                    and change { y }.by(2)
end

it '複数のchangeの結果だけ見るパターン' do
  # x, y が 1, 2になることだけ確認するbyは使え無さそう
  expect { subject }.to change { [x, y] }.to [1 ,2]
end

https://stackoverflow.com/questions/29388777/rspec-expect-to-change-multiple