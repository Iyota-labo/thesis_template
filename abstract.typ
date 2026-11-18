#let report_title = [
  タイトル\
  タイトル２行目
] // タイトル
#let student_num = "xx58xxx" // 学籍番号
#let student_name = "○○ ○○" // 名前
#let teacher_name = "○○ ○○" // 担当教員名

#set document(
  title: report_title
)

// ページ設定
#set page(
  paper: "a4",
  margin: (top: 20mm, bottom: 25mm, left: 20mm, right: 20mm),
  columns: 2,
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

// タイトル，著者名部分
#place(
  top + center,
  float: true,
  scope: "parent",
  clearance: 2em,
)[
  #title[
    #report_title
  ]

  #grid(
    rows: 2,
    align(center)[
      #set text(size: 12pt)
      指導教員 #teacher_name \
      #student_num #student_name
    ],
  )
]

= 序論

参考文献1@sample1

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

参考文献2@sample2

= 参考文献

#bibliography(
  "bibliography.yaml",
  title: none,
  style: "sist02"
)
