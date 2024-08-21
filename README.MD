# 似非DOS for MSX

# 機能概略

このソフトはMSXのDisk BASIC用のBDOSコール(0F37DH)を用いてMSX-DOSのBDOSコール(00005H)を代替し、MSX-DOS用のアプリケーションを動作させるOSです。

動作させるためには64KBのRAMとフロッピーディスクドライブを持つMSXかエミュレータが必要です。

DOS2カーネルを持っているマシンで`dos2formsx.dsk`を使うとMSX-DOS2互換になります。

コマンドシェルの似非COMMANDはMSX-DOS互換OSの[LSX-Dodgers](https://github.com/tablacus/LSX-Dodgers)をベースにして作成しました。

起動時にはAUTOEXECというコマンドを実行します。「AUTOEXEC.COM」や「AUTOEXEC.BAT」があればそのまま実行します。

# エミュレータ用イメージファイル

以下のページの Assets からダウンロードできます。

https://github.com/tablacus/dosformsx/releases

# 内部コマンド

https://github.com/tablacus/dosformsx/blob/main/COMMAND.TXT

# 基本的なシステムコールの使い方のサンプル

https://github.com/tablacus/LSX-Dodgers/wiki

LSX-Dodgersのwikiに文字列を表示したり、ファイルを読み出したり、書き込んだり、削除したりするサンプルがあります。

# WebMSX

[WebMSX](https://webmsx.org/)で起動するリンクはこちら

## dosformsx.dsk(MSX1)
https://webmsx.org/?MACHINE=MSX1J&DISKA=https://github.com/tablacus/dosformsx/raw/main/disk/dosformsx.dsk

## dosformsx.dsk(MSX2)
https://webmsx.org/?MACHINE=MSX2J&DISKA=https://github.com/tablacus/dosformsx/raw/main/disk/dosformsx.dsk

## dos2formsx.dsk(MSXturboR)
https://webmsx.org/?MACHINE=MSXTRJ&DISKA=https://github.com/tablacus/dosformsx/raw/main/disk/dos2formsx.dsk

# 参考文献

ASCAT編集部「MSXテクニカルガイドブック　第四版＋ディスク編」

この本が無ければ作成することはできなかったと思います。

# ライセンス

[MIT LICENSE](https://github.com/tablacus/dosformsx/blob/main/LICENSE)
MIT License のオープンソースです。  

※有料、無料にかかわらず同人ソフトに組み込んで配布してもらっても問題ありません。
