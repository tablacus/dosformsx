# 似非DOS for MSX Gaku

# 機能概略

このソフトはMSXのDisk BASIC用のBDOSコール(0F37DH)を用いてMSX-DOSのBDOSコール(00005H)を代替し、MSX-DOS用のアプリケーションを動作させるOSです。

動作させるためには64KBのRAMとフロッピーディスクドライブを持つMSXかエミュレータが必要です。

コマンドラインプロセッサの似非COMMANDはMSX-DOS互換OSの[LSX-Dodgers](https://github.com/tablacus/LSX-Dodgers)をベースにして作成しました。

内部コマンドについては以下のLSX-Dodgers用のものから「PATH」コマンドを抜いたものになっています。

https://github.com/tablacus/LSX-Dodgers/blob/master/LDCMD.TXT

バッチファイル(.BAT)はMSX-DOSやLSX-Dodgersと違い1行しか使えませんし「%1」などのパラメータ置き換えも使えません。

起動時にはAUTOEXECというコマンドを実行します。「AUTOEXEC.COM」や「AUTOEXEC.BAT」があればそのまま実行します。

# エミュレータ用イメージファイル

以下のページの Assets からダウンロードできます。

https://github.com/tablacus/dosformsx/releases

# 参考文献

ASCAT編集部「MSXテクニカルガイドブック　第四版＋ディスク編」

この本が無ければ作成することはできなかったと思います。

# ライセンス

MIT LICENSE
