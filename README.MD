# 似非DOS for MSX

# 機能概略

このソフトはMSXのDisk BASIC用のBDOSコール(0F37DH)を用いてMSX-DOSのBDOSコール(00005H)を代替し、MSX-DOS用のアプリケーションを動作させるOSです。

動作させるためには64KBのRAMとフロッピーディスクドライブを持つMSXかエミュレータが必要です。

DOS2カーネルを持っているマシンで`dos2formsx.dsk`を使うとMSX-DOS2互換になります。

コマンドシェルの似非COMMANDはMSX-DOS互換OSの[LSX-Dodgers](https://github.com/tablacus/LSX-Dodgers)をベースにして作成しました。

内部コマンドについては以下のLSX-Dodgers用とほぼ同じです。

https://github.com/tablacus/LSX-Dodgers/blob/master/LDCMD.TXT

起動時にはAUTOEXECというコマンドを実行します。「AUTOEXEC.COM」や「AUTOEXEC.BAT」があればそのまま実行します。

DOS2モードでも現時点では内部コマンドは基本的にカレントディレクトリが対象になります。`CD`コマンドで移動してから使ってください。

# エミュレータ用イメージファイル

以下のページの Assets からダウンロードできます。

https://github.com/tablacus/dosformsx/releases

# 基本的なシステムコールの使い方のサンプル

https://github.com/tablacus/LSX-Dodgers/wiki

LSX-Dodgersのwikiに文字列を表示したり、ファイルを読み出したり、書き込んだり、削除したりするサンプルがあります。


# 参考文献

ASCAT編集部「MSXテクニカルガイドブック　第四版＋ディスク編」

この本が無ければ作成することはできなかったと思います。

# ライセンス

[MIT LICENSE](https://github.com/tablacus/dosformsx/blob/main/LICENSE)
