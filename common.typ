#let conf(
  doc
) = {
  // 全体ページ設定
  set page(
    paper: "a4",
    margin: (top: 20mm, bottom: 25mm, left: 20mm, right: 20mm),
  )

  // 本文テキスト設定
  set text(
    lang: "ja",
    font: ("Libertinus Serif", "BIZ UDMincho"),
    size: 10.5pt,
  )

  // 本文段落設定
  set par(
    first-line-indent: (
      amount: 1em,
      all: true,
    ),
    spacing: 1.0em,
  )

  // 見出しの設定
  set heading(numbering: "1.1")
  show heading: set text(
    font: ("Libertinus Serif", "BIZ UDGothic"),
    size: 12pt,
  )
  show heading: set block(below: 1.0em) // 見出しの下の空白

  // 図表の設定
  show figure.caption: set text(size: 9pt) // 見出しのサイズ
  show figure.where(
    kind: table
  ): set figure.caption(position: top) // 表の見出し位置
  show figure: set block(above: 1.0em, below: 1.0em) // 図表の前後の空白

  // 式番号
  set math.equation(numbering: "(1)")

  doc
}

// 本文用表紙
#let cover(
  thesis_title: [],
  teacher_name: [],
  student_num: [],
  student_name: [],
  doc
) = {
  // タイトル設定
  show title: set text(size: 24pt)
  show title: set align(center)

  v(10em)
  title[
    #thesis_title
  ]

  let kinto(width, body) = {
    // 文字列を1文字ずつの配列にして 1fr で結合する
    let chars = body.clusters()
    box(width: width, chars.join(h(1fr)))
  }

  align(
    bottom + right,
    grid(
      columns: (auto, auto, auto),
      column-gutter: 0.8em, // 「：」の前後の余白
      row-gutter: 0.8em,    // 行間

      kinto(5em, "指導教員名"), [：], kinto(6em, teacher_name),
      kinto(5em, "学籍番号"), [：], kinto(6em, student_num),
      kinto(5em, "氏名"),     [：], kinto(6em, student_name),
    )
  )

  pagebreak()
  doc
}
