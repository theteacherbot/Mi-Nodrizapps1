$json = Get-Content -Raw -Encoding UTF8 'JSON.txt'
$script = Get-Content -Raw -Encoding UTF8 'script.js'
$script = $script -replace '(?s)const DEFAULT_TEMPLATES = \{.*?\n\};\n', ("const DEFAULT_TEMPLATES = " + $json + ";`n")
$script = $script.Replace('.slice(0,7)', '.slice(0,38)')
Set-Content -Path 'script.js' -Value $script -Encoding UTF8
