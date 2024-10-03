#!/bin/bash

./space_calc.sh "/Library/Caches"
./space_calc.sh "/Library/Logs"
./space_calc.sh "/Library/Updates"
./space_calc.sh "~/Library/Caches"
./space_calc.sh "~/Library/Logs"
./space_calc.sh "~/Library/Application Support"
./space_calc.sh "~/Library/Developer/Xcode/DerivedData"
./space_calc.sh "~/Library"

echo "搜尋可刪目錄"
./lschildren.sh "/Library/Caches"
./lschildren.sh "/Library/Logs"
./lschildren.sh "/Library/Updates"
./lschildren.sh "~/Library/Caches"
./lschildren.sh "~/Library/Logs"
./lschildren.sh "~/Library/Application Support"
./lschildren.sh "~/Library/Developer/Xcode/DerivedData"
./lschildren.sh "~/Library"

echo "刪除暫存檔案"
rm -r "/Library/Logs/*"
rm -r "/Library/Updates/*"
