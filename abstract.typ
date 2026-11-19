#import "common.typ": conf

#let thesis_title = [
  タイトル\
  タイトル２行目
] // タイトル
#let student_num = "xx58xxx" // 学籍番号
#let student_name = "○○ ○○" // 名前
#let teacher_name = "○○ ○○" // 担当教員名

#set document(
  title: thesis_title
)

// 共通設定
#show: conf

// タイトル設定
#show title: set text(size: 14pt)
#show title: set align(center)

// タイトル，著者名部分
#place(
  top + center,
  float: true,
  scope: "parent",
  clearance: 2em,
)[
  #title[
    #thesis_title
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
