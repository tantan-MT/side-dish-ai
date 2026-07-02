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
    Rails.logger.debug(content)

    cleaned = content.to_s.gsub(/```json|```/, "").strip

    result = JSON.parse(cleaned, symbolize_names: true)

    # 型保証
    result[:title] = result[:title].to_s
    result[:description] = result[:description].to_s

    result[:ingredients] = normalize_array(result[:ingredients])
    result[:steps] = normalize_array(result[:steps])

    result

  rescue StandardError => e
    Rails.logger.error("RecipeGenerator Error: #{e.message}")
    nil
  end

  private

  # =========================
  # 配列の安全化
  # =========================
  def normalize_array(value)
    case value
    when Array
      value
    when String
      value.split(/,|\n|・/).map(&:strip).reject(&:blank?)
    else
      []
    end
  end

  # =========================
  # プロンプト
  # =========================
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

      以下のJSON形式「のみ」で出力してください。
      説明文、前置き、```json は一切禁止です。

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
