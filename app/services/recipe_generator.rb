class RecipeGenerator
  def generate(ingredients)
    client = OpenAI::Client.new

    response = client.chat(
      parameters: {
        model: "gpt-4.1-mini",
        messages: [
          {
            role: "user",
            content: prompt(ingredients)
          }
        ]
      }
    )

    content = response.dig("choices", 0, "message", "content")
    JSON.parse(content, symbolize_names: true)
  end

  private

  def prompt(ingredients)
    <<~PROMPT
      以下の食材を使って、
      お弁当に入れやすい副菜レシピを1つ考えてください。

      条件:
      - 調理時間は10分以内
      - お弁当に入れやすい副菜
      - 家庭で簡単に作れる
      - 特別な調味料を使わない
      - 食材は必ず1つ以上使用する
      - 電子レンジまたはフライパン調理のみ
      - 工程は最大5ステップ以内

      使用する食材:
      #{ingredients.join(", ")}

      以下のJSON形式のみで出力してください。
      説明文やコードブロック（```json）は不要です。

      {
        "title": "レシピ名",
        "description": "レシピの簡単な説明",
        "ingredients": [
          "材料1",
          "材料2",
          "材料3"
        ],
        "steps": [
          "手順1",
          "手順2",
          "手順3",
          "手順4",
          "手順5"
        ]
      }
    PROMPT
  end
end
