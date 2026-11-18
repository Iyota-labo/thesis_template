#let report_title = [
  タイトル１行目 \
  タイトル２行目
] // タイトル
#let student_num = "--58---" // 学籍番号
#let student_name = "○○ ○○" // 名前
#let teacher_name = "○○ ○○" // 担当教員名

#set document(
  title: report_title
)

// 全体ページ設定
#set page(
  paper: "a4",
  margin: (top: 20mm, bottom: 25mm, left: 20mm, right: 20mm),
)

// 本文テキスト設定
#set text(
  lang: "ja",
  font: ("Libertinus Serif", "BIZ UDMincho"),
  size: 10.5pt,
)

// ヘッダー設定
#set heading(numbering: "1.1")
#show heading: set text(
  font: ("Libertinus Serif", "BIZ UDGothic"),
  size: 12pt,
)

// タイトル設定
#show title: set text(size: 14pt)
#show title: set align(center)

// 図表の設定
#show figure.caption: set text(size: 9pt)
#show figure.where(
  kind: table
): set figure.caption(position: top)

// 式番号
#set math.equation(numbering: "(1)")

// 表紙

#title[
  #report_title
]

#let kinto(width, body) = {
  // 文字列を1文字ずつの配列にして 1fr で結合する
  let chars = body.clusters()
  box(width: width, chars.join(h(1fr)))
}


#align(
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

#pagebreak()
#set page(columns: 2)

= 序論

参考文献１@sample1

#figure(
  table(
    columns: 3,
    table.header(
      [], [平均処理時間\[s\]], [最小動作\ メモリ数\[MiB\]]
    ),
    [従来], [137.68], [20],
    [簡略化後], [42.13], [20],
    [固定小数点数], [15.43], [20],
  ),
  caption: [改善したプログラムのシミュレータ実行結果],
)

$ A = pi r^2 $
$ "area" = pi dot "radius"^2 $
$ cal(A) :=
    { x in RR | x "is natural" } $

参考文献２@sample2

= 参考文献

#bibliography(
  "bibliography.yaml",
  title: none,
  style: "sist02"
)
