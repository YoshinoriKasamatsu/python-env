
curl https://www.python.org/ftp/python/3.11.4/python-3.11.4-embed-amd64.zip --OUTPUT python-3.11.4-embed-amd64.zip

Expand-Archive python-3.11.4-embed-amd64.zip

cd python-3.11.4-embed-amd64

curl https://bootstrap.pypa.io/get-pip.py --OUTPUT get-pip.py

.\python.exe .\get-pip.py

"import sys; sys.path.append('')" | Out-File -Encoding UTF8NoBOM -FilePath import_path.pth

"python311.zip
.

# Uncomment to run site.main() automatically
import site
" -replace "`r`n", "`n" | Out-File -Encoding UTF8NoBOM -FilePath python311._pth

.\Scripts\pip.exe install pandas