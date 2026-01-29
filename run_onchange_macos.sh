#!/bin/bash

# Dock: 왼쪽에 배치
defaults write com.apple.dock orientation -string "left"

# Dock: 자동 숨김
defaults write com.apple.dock autohide -bool true

# Dock: 앱 모두 제거
defaults write com.apple.dock persistent-apps -array

# Dock: 크기 설정 (기본 36, 확대 시 40)
defaults write com.apple.dock tilesize -int 36
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 45

# Keyboard: F키를 표준 기능 키로 사용
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true

# Keyboard: 키 반복 활성화 (악센트 문자 팝업 끄기)
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Keyboard: 자동 교정 모두 끄기
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# 변경사항 적용
killall Dock
