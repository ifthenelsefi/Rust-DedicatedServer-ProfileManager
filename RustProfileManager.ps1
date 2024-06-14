# Constants definition
# 定数定義
$serverRoot = "C:\rust_server\Server"
$oxideRoot = Join-Path $serverRoot "rustds\oxide"
$serverProfileRoot = Join-Path $serverRoot "rustds\server"
$runScriptPath = Join-Path $serverRoot "Run_DS.bat"
$profileDir = Join-Path $serverRoot "profiles"

# Set message language
# メッセージの言語を設定
$locale = (Get-Culture).Name

switch ($locale) {
    "ja-JP" {
        $messages = @{
            MenuCreate = "新しいプロファイルを作成"
            MenuSave = "プロファイルを保存"
            MenuList = "プロファイル一覧"
            MenuLoad = "プロファイルを切り替え"
            MenuDelete = "プロファイルを削除"
            MenuExit = "終了"
            EnterChoice = "選択肢を入力してください"
            EnterProfileName = "新しいプロファイル名を入力してください"
            EnterProfileNumberSave = "保存するプロファイル番号を入力してください"
            EnterProfileNumberLoad = "ロードするプロファイル番号を入力してください"
            EnterProfileNumberDelete = "削除するプロファイル番号を入力してください"
            ProfileCreated = "プロファイル '{0}' が正常に作成されました。"
            ProfileSaved = "プロファイル '{0}' が正常に保存されました。"
            ProfileLoaded = "プロファイル '{0}' が正常にロードされました。"
            ProfileDeleted = "プロファイル '{0}' が正常に削除されました。"
            ProfileNotExist = "プロファイル '{0}' は存在しません。"
            NoProfilesFound = "プロファイルが見つかりません。"
            InvalidProfileNumber = "無効なプロファイル番号です。"
            InvalidChoice = "無効な選択肢です。もう一度お試しください。"
            AvailableProfiles = "利用可能なプロファイル："
        }
    }
    "zh-CN" {
        $messages = @{
            MenuCreate = "创建新配置文件"
            MenuSave = "保存配置文件"
            MenuList = "列出配置文件"
            MenuLoad = "切换配置文件"
            MenuDelete = "删除配置文件"
            MenuExit = "退出"
            EnterChoice = "请输入您的选择"
            EnterProfileName = "输入新配置文件名称"
            EnterProfileNumberSave = "输入要保存的配置文件编号"
            EnterProfileNumberLoad = "输入要加载的配置文件编号"
            EnterProfileNumberDelete = "输入要删除的配置文件编号"
            ProfileCreated = "配置文件 '{0}' 创建成功。"
            ProfileSaved = "配置文件 '{0}' 保存成功。"
            ProfileLoaded = "配置文件 '{0}' 加载成功。"
            ProfileDeleted = "配置文件 '{0}' 删除成功。"
            ProfileNotExist = "配置文件 '{0}' 不存在。"
            NoProfilesFound = "未找到配置文件。"
            InvalidProfileNumber = "无效的配置文件编号。"
            InvalidChoice = "无效的选择。请再试一次。"
            AvailableProfiles = "可用的配置文件："
        }
    }
    "ru-RU" {
        $messages = @{
            MenuCreate = "Создать новый профиль"
            MenuSave = "Сохранить профиль"
            MenuList = "Список профилей"
            MenuLoad = "Переключить профиль"
            MenuDelete = "Удалить профиль"
            MenuExit = "Выход"
            EnterChoice = "Введите ваш выбор"
            EnterProfileName = "Введите имя нового профиля"
            EnterProfileNumberSave = "Введите номер профиля для сохранения"
            EnterProfileNumberLoad = "Введите номер профиля для загрузки"
            EnterProfileNumberDelete = "Введите номер профиля для удаления"
            ProfileCreated = "Профиль '{0}' успешно создан."
            ProfileSaved = "Профиль '{0}' успешно сохранен."
            ProfileLoaded = "Профиль '{0}' успешно загружен."
            ProfileDeleted = "Профиль '{0}' успешно удален."
            ProfileNotExist = "Профиль '{0}' не существует."
            NoProfilesFound = "Профили не найдены."
            InvalidProfileNumber = "Неверный номер профиля."
            InvalidChoice = "Неверный выбор. Пожалуйста, попробуйте еще раз."
            AvailableProfiles = "Доступные профили:"
        }
    }
    "ko-KR" {
        $messages = @{
            MenuCreate = "새 프로필 생성"
            MenuSave = "프로필 저장"
            MenuList = "프로필 목록"
            MenuLoad = "프로필 전환"
            MenuDelete = "프로필 삭제"
            MenuExit = "종료"
            EnterChoice = "선택을 입력하세요"
            EnterProfileName = "새 프로필 이름을 입력하세요"
            EnterProfileNumberSave = "저장할 프로필 번호를 입력하세요"
            EnterProfileNumberLoad = "로드할 프로필 번호를 입력하세요"
            EnterProfileNumberDelete = "삭제할 프로필 번호를 입력하세요"
            ProfileCreated = "프로필 '{0}'이(가) 성공적으로 생성되었습니다."
            ProfileSaved = "프로필 '{0}'이(가) 성공적으로 저장되었습니다."
            ProfileLoaded = "프로필 '{0}'이(가) 성공적으로 로드되었습니다."
            ProfileDeleted = "프로필 '{0}'이(가) 성공적으로 삭제되었습니다."
            ProfileNotExist = "프로필 '{0}'이(가) 존재하지 않습니다."
            NoProfilesFound = "프로필을 찾을 수 없습니다."
            InvalidProfileNumber = "잘못된 프로필 번호입니다."
            InvalidChoice = "잘못된 선택입니다. 다시 시도해 주세요."
            AvailableProfiles = "사용 가능한 프로필:"
        }
    }
    default {
        $messages = @{
            MenuCreate = "Create new profile"
            MenuSave = "Save Profile"
            MenuList = "List profiles"
            MenuLoad = "Switch profile"
            MenuDelete = "Delete profile"
            MenuExit = "Exit"
            EnterChoice = "Enter your choice"
            EnterProfileName = "Enter new profile name"
            EnterProfileNumberSave = "Enter profile number to save"
            EnterProfileNumberLoad = "Enter profile number to load"
            EnterProfileNumberDelete = "Enter profile number to remove"
            ProfileCreated = "Profile '{0}' created successfully."
            ProfileSaved = "Profile '{0}' saved successfully."
            ProfileLoaded = "Profile '{0}' loaded successfully."
            ProfileDeleted = "Profile '{0}' removed successfully."
            ProfileNotExist = "Profile '{0}' does not exist."
            NoProfilesFound = "No profiles found."
            InvalidProfileNumber = "Invalid profile number."
            InvalidChoice = "Invalid choice. Please try again."
            AvailableProfiles = "Available profiles:"
        }
    }
}

# Create profile directory if it does not exist
# プロファイルディレクトリが存在しない場合は作成
if (-not (Test-Path $profileDir)) {
    New-Item -ItemType Directory -Path $profileDir | Out-Null
}

# Create new profile function
# プロファイルの新規作成関数
function Create-Profile {
    param (
        [string]$profileName
    )
    $profilePath = Join-Path $profileDir $profileName

    # Create profile directory
    # プロファイルディレクトリ作成
    New-Item -ItemType Directory -Path $profilePath -Force | Out-Null
    Write-Host ($messages.ProfileCreated -f $profileName)
}

# Save profile function
# プロファイルの保存関数
function Save-Profile {
    param (
        [string]$profileName
    )
    $profilePath = Join-Path $profileDir $profileName
    $cfgSourcePath = Join-Path $serverProfileRoot $profileName "cfg"
    $cfgDestinationPath = Join-Path $profilePath "cfg"

    if (-not (Test-Path $profilePath)) {
        Write-Host ($messages.ProfileNotExist -f $profileName)
        return
    }

    # Clean up save destination
    # 保存先をクリーンアップ
    Remove-Item -Recurse -Path (Join-Path $profilePath "config") -Force -ErrorAction SilentlyContinue | Out-Null
    Remove-Item -Recurse -Path (Join-Path $profilePath "data") -Force -ErrorAction SilentlyContinue | Out-Null
    Remove-Item -Recurse -Path (Join-Path $profilePath "lang") -Force -ErrorAction SilentlyContinue | Out-Null
    Remove-Item -Recurse -Path (Join-Path $profilePath "plugins") -Force -ErrorAction SilentlyContinue | Out-Null
    Remove-Item -Recurse -Path $cfgDestinationPath -Force -ErrorAction SilentlyContinue | Out-Null

    # Copy necessary directories
    # 必要なディレクトリをコピー
    Copy-Item -Recurse -Path (Join-Path $oxideRoot "config") -Destination (Join-Path $profilePath "config") -Force | Out-Null
    Copy-Item -Recurse -Path (Join-Path $oxideRoot "data") -Destination (Join-Path $profilePath "data") -Force | Out-Null
    Copy-Item -Recurse -Path (Join-Path $oxideRoot "lang") -Destination (Join-Path $profilePath "lang") -Force | Out-Null
    Copy-Item -Recurse -Path (Join-Path $oxideRoot "plugins") -Destination (Join-Path $profilePath "plugins") -Force | Out-Null
    Copy-Item -Recurse -Path $cfgSourcePath -Destination $cfgDestinationPath -Force | Out-Null

    # Copy start script
    # 起動スクリプトをコピー
    Copy-Item -Path $runScriptPath -Destination (Join-Path $profilePath "Run_DS.bat") -Force | Out-Null

    Write-Host ($messages.ProfileSaved -f $profileName)
}

# Load profile function
# プロファイルのロード関数
function Load-Profile {
    param (
        [string]$profileName
    )
    $profilePath = Join-Path $profileDir $profileName
    $cfgSourcePath = Join-Path $profilePath "cfg"
    $cfgDestinationPath = Join-Path $serverProfileRoot $profileName "cfg"

    if (-not (Test-Path $profilePath)) {
        Write-Host ($messages.ProfileNotExist -f $profileName)
        return
    }

    # Clean up current settings
    # 現在の設定をクリーンアップ
    Remove-Item -Recurse -Path (Join-Path $oxideRoot "config") -Force -ErrorAction SilentlyContinue | Out-Null
    Remove-Item -Recurse -Path (Join-Path $oxideRoot "data") -Force -ErrorAction SilentlyContinue | Out-Null
    Remove-Item -Recurse -Path (Join-Path $oxideRoot "lang") -Force -ErrorAction SilentlyContinue | Out-Null
    Remove-Item -Recurse -Path (Join-Path $oxideRoot "plugins") -Force -ErrorAction SilentlyContinue | Out-Null
    Remove-Item -Recurse -Path $cfgDestinationPath -Force -ErrorAction SilentlyContinue | Out-Null

    # Load settings from profile
    # プロファイルから設定をロード
    Copy-Item -Recurse -Path (Join-Path $profilePath "config") -Destination (Join-Path $oxideRoot "config") -Force | Out-Null
    Copy-Item -Recurse -Path (Join-Path $profilePath "data") -Destination (Join-Path $oxideRoot "data") -Force | Out-Null
    Copy-Item -Recurse -Path (Join-Path $profilePath "lang") -Destination (Join-Path $oxideRoot "lang") -Force | Out-Null
    Copy-Item -Recurse -Path (Join-Path $profilePath "plugins") -Destination (Join-Path $oxideRoot "plugins") -Force | Out-Null
    Copy-Item -Recurse -Path $cfgSourcePath -Destination $cfgDestinationPath -Force | Out-Null

    # Copy start script
    # 起動スクリプトをコピー
    Copy-Item -Path (Join-Path $profilePath "Run_DS.bat") -Destination $runScriptPath -Force | Out-Null

    Write-Host ($messages.ProfileLoaded -f $profileName)
}

# List profiles function
# プロファイルの一覧表示関数
function List-Profiles {
    $profiles = Get-ChildItem -Directory -Path $profileDir | Select-Object -ExpandProperty Name
    if ($profiles.Count -eq 0) {
        Write-Host $messages.NoProfilesFound
        return $null
    } else {
        Write-Host $messages.AvailableProfiles
        $profiles | ForEach-Object -Begin { $index = 0 } -Process {
            Write-Host "$index. $_"
            $index++
        }
        return $profiles
    }
}

# Remove profile function
# プロファイルの削除関数
function Remove-Profile {
    param (
        [string]$profileName
    )
    $profilePath = Join-Path $profileDir $profileName

    if (Test-Path $profilePath) {
        Remove-Item -Recurse -Path $profilePath -Force | Out-Null
        Write-Host ($messages.ProfileDeleted -f $profileName)
    } else {
        Write-Host ($messages.ProfileNotExist -f $profileName)
    }
}

# Show menu
# メニューの表示
function Show-Menu {
    Write-Host "1. $($messages.MenuCreate)"
    Write-Host "2. $($messages.MenuSave)"
    Write-Host "3. $($messages.MenuList)"
    Write-Host "4. $($messages.MenuLoad)"
    Write-Host "5. $($messages.MenuDelete)"
    Write-Host "6. $($messages.MenuExit)"
}

# Main loop
# メインループ
while ($true) {
    Show-Menu
    $choice = Read-Host $messages.EnterChoice

    switch ($choice) {
        1 {
            while ($true) {
                $profileName = Read-Host $messages.EnterProfileName
                Create-Profile -profileName $profileName
                break
            }
        }
        2 {
            while ($true) {
                $profiles = List-Profiles
                if ($profiles -ne $null) {
                    $profileIndex = Read-Host $messages.EnterProfileNumberSave
                    if ($profileIndex -match '^\d+$' -and $profileIndex -ge 0 -and $profileIndex -lt $profiles.Count) {
                        $profileName = $profiles[$profileIndex]
                        Save-Profile -profileName $profileName
                    } else {
                        Write-Host $messages.InvalidProfileNumber
                    }
                }
                break
            }
        }
        3 {
            while ($true) {
                $profiles = List-Profiles
                if ($profiles -ne $null) {
                    $profiles | ForEach-Object { Write-Host "$_" }
                }
                break
            }
        }
        4 {
            while ($true) {
                $profiles = List-Profiles
                if ($profiles -ne $null) {
                    $profileIndex = Read-Host $messages.EnterProfileNumberLoad
                    if ($profileIndex -match '^\d+$' -and $profileIndex -ge 0 -and $profileIndex -lt $profiles.Count) {
                        $profileName = $profiles[$profileIndex]
                        Load-Profile -profileName $profileName
                    } else {
                        Write-Host $messages.InvalidProfileNumber
                    }
                }
                break
            }
        }
        5 {
            while ($true) {
                $profiles = List-Profiles
                if ($profiles -ne $null) {
                    $profileIndex = Read-Host $messages.EnterProfileNumberDelete
                    if ($profileIndex -match '^\d+$' -and $profileIndex -ge 0 -and $profileIndex -lt $profiles.Count) {
                        $profileName = $profiles[$profileIndex]
                        Remove-Profile -profileName $profileName
                    } else {
                        Write-Host $messages.InvalidProfileNumber
                    }
                }
                break
            }
        }
        6 {
            return
        }
        default {
            Write-Host $messages.InvalidChoice
        }
    }
}
