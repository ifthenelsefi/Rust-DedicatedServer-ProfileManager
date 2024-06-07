# Rust Server Profile Management Script

## Overview
This PowerShell script is designed to manage profiles for a Rust game server. It allows the server administrator to create, save, load, and delete server profiles, including their configurations, data, and plugins. This facilitates easy switching between different server setups and configurations.

このPowerShellスクリプトは、Rustゲームサーバーのプロファイルを管理するために設計されています。サーバー管理者がサーバープロファイルの作成、保存、ロード、削除を行うことができ、設定、データ、プラグインを含む異なるサーバーセットアップや構成間の簡単な切り替えを可能にします。

## Features
- **Create New Profile**: Create a new profile directory with the specified name.
- **Save Profile**: Save the current server configuration, data, and plugins to the specified profile.
- **List Profiles**: Display a list of all available profiles with their corresponding numbers.
- **Load Profile**: Load the specified profile, replacing the current server configuration, data, and plugins with those from the profile.
- **Delete Profile**: Delete the specified profile directory and its contents.

### 機能
- **新しいプロファイルの作成**: 指定された名前で新しいプロファイルディレクトリを作成します。
- **プロファイルの保存**: 現在のサーバー設定、データ、およびプラグインを指定されたプロファイルに保存します。
- **プロファイル一覧の表示**: 利用可能なすべてのプロファイルと対応する番号のリストを表示します。
- **プロファイルのロード**: 指定されたプロファイルをロードし、現在のサーバー設定、データ、およびプラグインをプロファイルの内容で置き換えます。
- **プロファイルの削除**: 指定されたプロファイルディレクトリとその内容を削除します。

## Usage
1. **Run the script**: Execute the script in PowerShell.
2. **Select an option**: Choose an option from the menu by entering the corresponding number:
   - 1: Create a new profile
   - 2: Save the current server configuration to an existing profile
   - 3: List all available profiles
   - 4: Load an existing profile
   - 5: Delete an existing profile
   - 6: Exit the script

### 使い方
1. **スクリプトの実行**: PowerShellでスクリプトを実行します。
2. **オプションの選択**: メニューから対応する番号を入力してオプションを選択します:
   - 1: 新しいプロファイルを作成する
   - 2: 現在のサーバー設定を既存のプロファイルに保存する
   - 3: すべての利用可能なプロファイルを表示する
   - 4: 既存のプロファイルをロードする
   - 5: 既存のプロファイルを削除する
   - 6: スクリプトを終了する

## Requirements
- PowerShell 5.0 or later
- Rust server installed at `C:\rust_server\Server`
- Oxide plugin system configured in the Rust server directory

### 必要条件
- PowerShell 5.0以降
- `C:\rust_server\Server`にインストールされたRustサーバー
- Rustサーバーディレクトリに設定されたOxideプラグインシステム

## Configuration
Ensure that the following paths are correctly set in the script:
- Server Root: `C:\rust_server\Server`
- Oxide Root: `C:\rust_server\Server\rustds\oxide`
- Run_DS Path: `C:\rust_server\Server\Run_DS.bat`
- Profile Path: `C:\rust_server\Server\profiles`

### 設定
以下のパスがスクリプト内で正しく設定されていることを確認してください:
- インストールフォルダ: `C:\rust_server\Server`
- Oxide フォルダ: `C:\rust_server\Server\rustds\oxide`
- Run_DS パス: `C:\rust_server\Server\Run_DS.bat`
- プロファイルフォルダ: `C:\rust_server\Server\profiles`
