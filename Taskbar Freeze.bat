:: 윈도우10에서 마우스 클릭이 동작하지 않을 때 사용
:: 작업표시줄, 시작버튼, 돋보기버튼의 클릭 응답이 없을 때 사용해서 정상 동작함을 확인함
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage -AllUsers | ForEach-Object {Add-AppxPackage -DisableDevelopmentMode -Register \"$($_.InstallLocation)\AppXManifest.xml\"}"

:: [설명]

:: Get-AppxPackage -AllUsers: 
:: 이 부분은 시스템에 설치된 모든 앱 패키지 목록을 가져옵니다. -AllUsers 플래그를 사용하여 모든 사용자에 대한 앱 패키지를 가져옵니다.

:: Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}:
:: 이 부분은 이전 명령에서 가져온 각 앱 패키지에 대해 다음을 수행합니다.

:: Add-AppxPackage: 
:: 이 명령은 앱 패키지를 시스템에 다시 추가하고 설치합니다.

:: -DisableDevelopmentMode: 
:: 이 플래그는 개발 모드를 비활성화하여 시스템에 신뢰할 수 없는 앱을 설치하지 못하게 합니다.

:: -Register "$($_.InstallLocation)\AppXManifest.xml"
:: 이 부분은 해당 앱 패키지의 설치 위치에서 AppXManifest.xml 파일을 다시 등록합니다. 이렇게 하면 해당 앱의 구성이 다시 생성됩니다.

pause
