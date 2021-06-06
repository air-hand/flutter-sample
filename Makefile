.PHONY: setup
setup:
	pwsh.exe ./scripts/enable-wsb.ps1

.PHONY: start
start:
	pwsh.exe ./scripts/start-box.ps1
