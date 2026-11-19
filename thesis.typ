#import "common.typ": conf, cover

#let thesis_title = [
  タイトル１行目 \
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

// 表紙
#show: cover.with(
  thesis_title: thesis_title,
  teacher_name: teacher_name,
  student_num: student_num,
  student_name: student_name,
)

// 目次ページ
#show outline.entry.where(
  level: 1
): set block(above: 1.2em)
#outline()
#pagebreak()

// 本文

= 序論

日本国民は、正当に選挙された国会における代表者を通じて行動し、われらとわれらの子孫のために、
諸国民との協和による成果と、わが国全土にわたつて自由のもたらす恵沢を確保し、
政府の行為によつて再び戦争の惨禍が起ることのないやうにすることを決意し、
ここに主権が国民に存することを宣言し、この憲法を確定する。

そもそも国政は、国民の厳粛な信託によるものであつて、その権威は国民に由来し、
その権力は国民の代表者がこれを行使し、その福利は国民がこれを享受する。
これは人類普遍の原理であり、この憲法は、かかる原理に基くものである。
われらは、これに反する一切の憲法、法令及び詔勅を排除する。
日本国民は、恒久の平和を念願し、人間相互の関係を支配する崇高な理想を深く自覚するのであつて、
平和を愛する諸国民の公正と信義に信頼して、われらの安全と生存を保持しようと決意した。@sample1

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
