def find_or_initialize_by(attributes, &block)
  find_by(attributes) || new(attributes, &block)
end


def find_or_create_by(attributes, &block)
  find_by(attributes) || create(attributes, &block) 
end

category = Category.find_or_create_by(name: "ナイキ")
# ナイキというデータが既に存在すれば保存されず、そのデータが戻り値となる
# 新規データであれば保存される

category = Category.find_or_initialize_by(name: "ナイキ")
# ナイキというデータが既に存在すれば保存されず、そのデータが戻り値となる
# 新規データであればインスタンスを生成する
if category.new_record? # 新規データなら保存
  category.save!
else # 既存データなら新カラム追加
  category.update_attributes!(english_name: 'nike') # 英語表記データ追加
end