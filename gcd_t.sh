#!/bin/bash


ERROR_EXIT(){
	echo $1
	rm /tmp/$$-*
	exit
}
#成功した時の動作確認
#両方数値
./ged6.sh 2 4 > /tmp/$$-result
echo 2 > /tmp/$$-ans
diff /tmp/$$-result /tmp/$$-ans || ERROR_EXIT "テスト失敗"

#引数が一つ
./ged6.sh 3 > /tmp/$$-result
echo "引数を2個入れてください" > /tmp/$$-ans
diff /tmp/$$-result /tmp/$$-ans || ERROR_EXIT "テスト失敗"
                                 
#文字列が含まれる
./ged6.sh a 5 > /tmp/$$-result
echo "数値を入力してください" > /tmp/$$-ans
diff /tmp/$$-result /tmp/$$-ans || ERROR_EXIT "テスト失敗"

#負の数がまれる
./ged6.sh -1 5 > /tmp/$$-result
echo "正の値を入力してください" > /tmp/$$-ans                                             
diff /tmp/$$-result /tmp/$$-ans || ERROR_EXIT "テスト失敗"

#負の数がまれる
./ged6.sh 0 0 > /tmp/$$-result
echo "引数に両方0を入力できません" > /tmp/$$-ans
diff /tmp/$$-result /tmp/$$-ans || ERROR_EXIT "テスト失敗"
