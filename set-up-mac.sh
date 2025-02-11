defaults write com.apple.dock tilesize -int 40             # Dockのアイコンサイズを1〜128の範囲で指定
defaults write com.apple.dock mineffect -string scale       # ウィンドウをしまう時のアニメーションをシンプルに
defaults write com.apple.dock launchanim -bool false       # 起動中のアプリのアニメーション無効化
defaults write com.apple.dock autohide -bool true          # Dockの自動表示/非表示機能を有効化
defaults write com.apple.dock autohide-delay -int 0         # Dock表示速度 最速化
defaults write com.apple.dock autohide-time-modifier -int 0 # Dock表示アニメーション速度 最速化
defaults write NSGlobalDomain AppleShowAllExtensions -bool true  # 拡張子まで表示する設定
defaults write com.apple.Finder AppleShowAllFiles -bool true     # 隠しファイルを表示する設定
defaults write com.apple.finder ShowPathbar -bool true           # Finderウィンドウ下部のパスバーを表示する設定
defaults write com.apple.LaunchServices LSQuarantine -bool false # 未確認ファイルを開く際の警告を無効化する設定
defaults write com.apple.finder WarnOnEmptyTrash -bool false     # ゴミ箱を空にする際の確認警告を無効化する設定
defaults write com.apple.mouse.doubleClickThreshold -float 0.5 # ダブルクリックの反応速度（間隔）を設定する
defaults write com.apple.mouse.scaling -int 8                  # マウスカーソルの移動速度（加速度）を設定する
defaults write com.apple.scrollwheel.scaling -int 4            # マウスホイールによるスクロール速度を設定する
defaults write com.apple.springing.delay -float 0              # スプリングローディングの起動遅延を無効化して高速化する
defaults write NSGlobalDomain KeyRepeat -int 3                      # キーリピートの速度（押し続けたときの反復間隔）を高速に設定する
defaults write NSGlobalDomain InitialKeyRepeat -int 20              # キーリピート開始までの待機時間を短く設定する
defaults write NSAutomaticSpellingCorrectionEnabled -bool false     # 入力時の自動スペル修正を無効化する
defaults write WebAutomaticSpellingCorrectionEnabled -bool false    # Web入力エリアでの自動スペル修正を無効化する
defaults write NSAutomaticCapitalizationEnabled -bool false         # 自動大文字変換（文頭などの大文字化）を無効化する
defaults write NSAutomaticPeriodSubstitutionEnabled -bool false     # ダブルスペースでピリオド変換する機能を無効化する
defaults write NSAutomaticDashSubstitutionEnabled -bool false       # 入力時のダッシュへの自動変換を無効化する
defaults write NSAutomaticQuoteSubstitutionEnabled -bool false      # 入力時のクォート（引用符）の自動変換を無効化する
