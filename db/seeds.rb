vegetable = IngredientCategory.find_or_create_by!(name: "野菜")
meat_fish = IngredientCategory.find_or_create_by!(name: "肉・魚介")
other = IngredientCategory.find_or_create_by!(name: "卵・その他")

[
  { name: "にんじん", image_name: "carrot.png" },
  { name: "ピーマン", image_name: "green_pepper.png" },
  { name: "玉ねぎ", image_name: "onion.png" },
  { name: "じゃがいも", image_name: "potato.png" },
  { name: "ブロッコリー", image_name: "broccoli.png" },
  { name: "ほうれん草", image_name: "spinach.png" },
  { name: "小松菜", image_name: "komatsuna.png" },
  { name: "キャベツ", image_name: "cabbage.png" },
  { name: "きゅうり", image_name: "cucumber.png" },
  { name: "なす", image_name: "eggplant.png" },
  { name: "トマト", image_name: "tomato.png" },
  { name: "かぼちゃ", image_name: "pumpkin.png" },
  { name: "オクラ", image_name: "okra.png" },
  { name: "コーン", image_name: "corn.png" },
  { name: "しめじ", image_name: "shimeji.png" },
  { name: "えのき", image_name: "enoki.png" },
  { name: "しいたけ", image_name: "shiitake.png" },
  { name: "エリンギ", image_name: "eringi.png" }
].each do |ingredient|
  record = Ingredient.find_or_create_by!(
    name: ingredient[:name],
    ingredient_category: vegetable
  )

  record.update!(image_name: ingredient[:image_name])
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
