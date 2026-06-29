vegetable = IngredientCategory.find_or_create_by!(name: "野菜")
meat_fish = IngredientCategory.find_or_create_by!(name: "肉・魚介")
other = IngredientCategory.find_or_create_by!(name: "卵・その他")

[
  "にんじん",
  "ピーマン",
  "玉ねぎ",
  "じゃがいも",
  "ブロッコリー",
  "ほうれん草",
  "小松菜",
  "キャベツ",
  "きゅうり",
  "なす",
  "トマト",
  "かぼちゃ",
  "オクラ",
  "コーン",
  "しめじ",
  "えのき",
  "しいたけ",
  "エリンギ"
].each do |name|
  Ingredient.find_or_create_by!(
    name: name,
    ingredient_category: vegetable
  )
end

[
  "ベーコン",
  "ソーセージ",
  "ハム",
  "ツナ缶",
  "ちくわ",
  "カニカマ"
].each do |name|
  Ingredient.find_or_create_by!(
    name: name,
    ingredient_category: meat_fish
  )
end

[
  "卵",
  "チーズ",
  "大豆（水煮）",
  "厚揚げ",
  "油揚げ",
  "春雨",
  "ワカメ",
  "ひじき",
  "のり"
].each do |name|
  Ingredient.find_or_create_by!(
    name: name,
    ingredient_category: other
  )
end
