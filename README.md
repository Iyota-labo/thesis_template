# Iyota Lab's Typst thesis format

- `abstract.typ`: 論文要旨用
- `thesis.typ`: 論文用
- `common.typ`: Typst共通設定
- `bibliography.yaml`: Hayagriva形式の参考文献一覧．  
    実際に本文で参照されたもののみ表示されます．  
    書式については[こちら](https://github.com/typst/hayagriva/blob/main/docs/file-format.md)

## Usage

1. テンプレートから自分用のリポジトリを作成

    以下のリンクから作成
 
    [テンプレートからリポジトリ作成](https://github.com/Iyota-labo/thesis_template/generate)

2. 作成したリポジトリをクローン

    ```sh
    git clone <作成したリポジトリのURL>
    ```

3. クローンしたリポジトリで論文を作成

    `abstract.typ`もしくは`thesis.typ`で本文の内容を作成  
    `bibliography.yaml`で引用元を記述  

## Preview

```sh
# 書式：mise preview <abstract/thesis>
mise preview abstract
```

ブラウザでプレビュー画面が自動で開きます

> tinymistの制限により，複数同時にプレビューを起動することはできません

## Build

```sh
# 書式：mise build <abstract/thesis>
mise build abstract
```

dist/abstract.pdfにPDFが出力されます．
