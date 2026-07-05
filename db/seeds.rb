vegetable = IngredientCategory.find_or_create_by!(name: "野菜")
meat_fish = IngredientCategory.find_or_create_by!(name: "肉・魚介")
other = IngredientCategory.find_or_create_by!(name: "卵・その他")

# =========================
# 野菜
# =========================
[
  { name: "にんじん", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783000901/carrot_mylaxj.png" },
  { name: "ピーマン", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783256037/file_00000000162c7206928b692fee88220e_jyl9vb.png" },
  { name: "玉ねぎ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783004564/ChatGPT_Image_2026%E5%B9%B47%E6%9C%882%E6%97%A5_22_28_03_fbndnt.png" },
  { name: "じゃがいも", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783004565/ChatGPT_Image_2026%E5%B9%B47%E6%9C%882%E6%97%A5_22_29_46_dbhlxa.png" },
  { name: "ブロッコリー", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783256035/file_000000002c1c72069afdd7d554d6f4f4_z82ngn.png" },
  { name: "ほうれん草", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783173212/ChatGPT_Image_2026%E5%B9%B47%E6%9C%884%E6%97%A5_22_45_51_udmsxx.png" },
  { name: "小松菜", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783173212/ChatGPT_Image_2026%E5%B9%B47%E6%9C%884%E6%97%A5_22_43_45_taozpq.png" },
  { name: "キャベツ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783173211/ChatGPT_Image_2026%E5%B9%B47%E6%9C%884%E6%97%A5_22_41_43_gfroon.png" },
  { name: "きゅうり", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783081242/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_21_15_28_xsenvp.png" },
  { name: "なす", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783084692/Simple_flat_illustration_of_an_eggplant_same_style_as_the_carrot_reference_image_vibrant_purple_eggplant_with_green_stem_and_leaves_on_top_clean_outlined_style_bold_colors_centered_composition_icon_fills_the_circular_frame_no_text_n_aiwxdb.png" },
  { name: "トマト", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086234/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_22_24_07_o6o2fz.png" },
  { name: "かぼちゃ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086233/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_22_26_11_prmpvk.png" },
  { name: "オクラ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086234/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_22_28_00_h944mj.png" },
  { name: "コーン", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086236/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_22_30_10_q6qdpy.png" },
  { name: "しめじ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086235/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_22_32_15_zdfjwi.png" },
  { name: "えのき", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086236/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_22_38_34_t5wjwn.png" },
  { name: "しいたけ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086235/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_22_40_18_p1wgk4.png" },
  { name: "エリンギ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783164433/file_000000003298720694449c435d7ac472_aflg6x.png" }
].each do |ingredient|
  record = Ingredient.find_or_create_by!(
    name: ingredient[:name],
    ingredient_category: vegetable
  )

  record.update!(image_url: ingredient[:image_url])
end

# =========================
# 肉・魚介
# =========================
[
  { name: "ベーコン", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783164433/file_000000004da87206aaa19d54bcbaca57_zh1onn.png" },
  { name: "ソーセージ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783164432/file_00000000717c7206a4aaa5bd9f8a994c_wgfnnu.png" },
  { name: "ハム", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783164433/file_00000000d5c87206a1bff659cfc52b85_cyqlcq.png" },
  { name: "ツナ缶", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783164433/file_00000000d2cc720683b7256acecf1897_tcznjt.png" },
  { name: "ちくわ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783173211/ChatGPT_Image_2026%E5%B9%B47%E6%9C%884%E6%97%A5_22_30_50_hidxfd.png" },
  { name: "カニカマ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783173210/ChatGPT_Image_2026%E5%B9%B47%E6%9C%884%E6%97%A5_22_32_23_fejlwt.png" }
].each do |ingredient|
  record = Ingredient.find_or_create_by!(
    name: ingredient[:name],
    ingredient_category: meat_fish
  )

  record.update!(image_url: ingredient[:image_url])
end

# =========================
# 卵・その他
# =========================
[
  { name: "卵", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783173212/ChatGPT_Image_2026%E5%B9%B47%E6%9C%884%E6%97%A5_22_35_53_bifs0j.png" },
  { name: "チーズ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783173211/ChatGPT_Image_2026%E5%B9%B47%E6%9C%884%E6%97%A5_22_33_56_q22c5e.png" },
  { name: "大豆（水煮）", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783259783/ChatGPT_Image_2026%E5%B9%B47%E6%9C%885%E6%97%A5_22_37_24_oyzszd.png" },
  { name: "厚揚げ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783259782/ChatGPT_Image_2026%E5%B9%B47%E6%9C%885%E6%97%A5_22_33_22_lvuzhp.png" },
  { name: "油揚げ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783259783/ChatGPT_Image_2026%E5%B9%B47%E6%9C%885%E6%97%A5_22_34_41_qznomi.png" },
  { name: "春雨", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086238/Simple_flat_illustration_of_harusame_glass_noodles_same_style_as_the_carrot_reference_image_translucent_white_to_light_beige_thin_noodle_strands_arranged_in_a_neat_pile_clean_outlined_style_bold_colors_centered_composition_icon_fills_xufu5t.png" },
  { name: "ワカメ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783259782/ChatGPT_Image_2026%E5%B9%B47%E6%9C%885%E6%97%A5_22_35_53_lki8km.png" },
  { name: "ひじき", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783259783/ChatGPT_Image_2026%E5%B9%B47%E6%9C%885%E6%97%A5_22_55_42_frjebm.png" },
  { name: "のり", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783256036/file_000000004a607206b0d20cf51dbaf57e_et4moo.png" }
].each do |ingredient|
  record = Ingredient.find_or_create_by!(
    name: ingredient[:name],
    ingredient_category: other
  )

  record.update!(image_url: ingredient[:image_url])
end
