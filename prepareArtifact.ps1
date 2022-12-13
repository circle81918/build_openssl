Param(
    # x64, x86
	[Parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [String]
    $Platform
)

[string]$ROOT = Get-Location
$OUTPUT_DIR = "$ROOT\openssl\output\$Platform" 

Compress-Archive -Path $OUTPUT_DIR\* -DestinationPath $OUTPUT_DIR\openssl_$Platform.zip
