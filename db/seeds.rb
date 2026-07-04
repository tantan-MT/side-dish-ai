vegetable = IngredientCategory.find_or_create_by!(name: "野菜")
meat_fish = IngredientCategory.find_or_create_by!(name: "肉・魚介")
other = IngredientCategory.find_or_create_by!(name: "卵・その他")

# =========================
# 野菜
# =========================
[
  { name: "にんじん", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783000901/carrot_mylaxj.png" },
  { name: "ピーマン", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783004564/ChatGPT_Image_2026%E5%B9%B47%E6%9C%882%E6%97%A5_22_24_15_nz9niy.png" },
  { name: "玉ねぎ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783004564/ChatGPT_Image_2026%E5%B9%B47%E6%9C%882%E6%97%A5_22_28_03_fbndnt.png" },
  { name: "じゃがいも", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783004565/ChatGPT_Image_2026%E5%B9%B47%E6%9C%882%E6%97%A5_22_29_46_dbhlxa.png" },
  { name: "ブロッコリー", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783004566/ChatGPT_Image_2026%E5%B9%B47%E6%9C%882%E6%97%A5_22_31_03_yejrzz.png" },
  { name: "ほうれん草", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783004564/ChatGPT_Image_2026%E5%B9%B47%E6%9C%882%E6%97%A5_22_33_28_majupa.png" },
  { name: "小松菜", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783004565/ChatGPT_Image_2026%E5%B9%B47%E6%9C%882%E6%97%A5_22_35_03_cgncbp.png" },
  { name: "キャベツ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783004565/ChatGPT_Image_2026%E5%B9%B47%E6%9C%882%E6%97%A5_22_36_27_zbuvsc.png" },
  { name: "きゅうり", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783081242/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_21_15_28_xsenvp.png" },
  { name: "なす", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783084692/Simple_flat_illustration_of_an_eggplant_same_style_as_the_carrot_reference_image_vibrant_purple_eggplant_with_green_stem_and_leaves_on_top_clean_outlined_style_bold_colors_centered_composition_icon_fills_the_circular_frame_no_text_n_aiwxdb.png" },
  { name: "トマト", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086234/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_22_24_07_o6o2fz.png" },
  { name: "かぼちゃ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086233/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_22_26_11_prmpvk.png" },
  { name: "オクラ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086234/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_22_28_00_h944mj.png" },
  { name: "コーン", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086236/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_22_30_10_q6qdpy.png" },
  { name: "しめじ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086234/ChatGPT_Image_2026%E5%B9%B47%E6%9C%883%E6%97%A5_22_28_00_h944mj.png" },
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
  { name: "ちくわ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783081247/Gemini_Generated_Image_dmfhi1dmfhi1dmfh_fkrqjz.png" },
  { name: "カニカマ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783081248/Gemini_Generated_Image_agtq10agtq10agtq_dibqif.png" }
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
  { name: "卵", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086236/Simple_flat_illustration_of_an_egg_same_style_as_the_carrot_reference_image_white_to_cream_colored_oval_egg_shape_clean_outlined_style_bold_colors_centered_composition_icon_fills_the_circular_frame_no_text_no_background_transparent_txllqj.png" },
  { name: "チーズ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783081255/Gemini_Generated_Image_qb0dovqb0dovqb0d_vwz8bd.png" },
  { name: "大豆（水煮）", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086237/Simple_flat_illustration_of_boiled_soybeans_same_style_as_the_carrot_reference_image_light_beige_to_cream_colored_round_soybeans_arranged_in_a_small_pile_clean_outlined_style_bold_colors_centered_composition_icon_fills_the_circular_fr_iw344q.png" },
  { name: "厚揚げ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086237/Simple_flat_illustration_of_atsuage_thick_fried_tofu_same_style_as_the_carrot_reference_image_golden_brown_rectangular_thick_tofu_block_with_white_interior_visible_clean_outlined_style_bold_colors_centered_composition_icon_fills_the_c_qfipdz.png" },
  { name: "油揚げ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086236/Simple_flat_illustration_of_aburaage_fried_tofu_same_style_as_the_carrot_reference_image_light_golden_brown_rectangular_tofu_pouch_with_subtle_texture_clean_outlined_style_bold_colors_centered_composition_icon_fills_the_circular_frame_mlpvkw.png" },
  { name: "春雨", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086238/Simple_flat_illustration_of_harusame_glass_noodles_same_style_as_the_carrot_reference_image_translucent_white_to_light_beige_thin_noodle_strands_arranged_in_a_neat_pile_clean_outlined_style_bold_colors_centered_composition_icon_fills_xufu5t.png" },
  { name: "ワカメ", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086762/Simple_flat_illustration_of_wakame_seaweed_same_style_as_the_carrot_reference_image_vibrant_green_wavy_seaweed_leaves_with_natural_curves_clean_outlined_style_bold_colors_centered_composition_icon_fills_the_circular_frame_no_text_no_vqicsk.png" },
  { name: "ひじき", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086762/Simple_flat_illustration_of_hijiki_seaweed_same_style_as_the_carrot_reference_image_dark_brown_to_black_thin_strands_of_hijiki_seaweed_arranged_in_a_small_pile_clean_outlined_style_bold_colors_centered_composition_icon_fills_the_circu_ccrgiy.png" },
  { name: "のり", image_url: "https://res.cloudinary.com/diufh1hcb/image/upload/v1783086762/Simple_flat_illustration_of_nori_seaweed_sheet_same_style_as_the_carrot_reference_image_dark_green_to_black_colored_rectangular_nori_sheet_with_subtle_texture_clean_outlined_style_bold_colors_centered_composition_icon_fills_the_circul_jjpyhc.png" }
].each do |ingredient|
  record = Ingredient.find_or_create_by!(
    name: ingredient[:name],
    ingredient_category: other
  )

  record.update!(image_url: ingredient[:image_url])
end
