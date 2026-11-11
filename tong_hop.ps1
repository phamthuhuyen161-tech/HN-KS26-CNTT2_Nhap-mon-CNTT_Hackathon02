# Script: tong_hop.ps1
# Tac gia:Pham Thu Huyen
# Ngay tao: 11/11/2026
write-host "Dang tao bao cao..."
"=== BAO CAO SU CO WWEBSITE ===" > logs/tong_hop.txt
get-content logs/request.log | select-string "status=404" >> logs/tong_hop.txt
get-content logs/request.log | select-string "status=500" | measure-object >> logs/tong_hop.txt
write-host "HOAN THANH"