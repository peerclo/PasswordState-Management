get-childitem $psscriptroot\Functions\*.ps1 -recurse | Where-Object {$_.fullname -notlike "*.Tests*"} | ForEach-Object {. $_.Fullname }