# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231018.0.234104"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231018.0.234104/kopia-20231018.0.234104-macOS-x64.tar.gz"
    sha256 "ee2649cb78b8f727150f2daf5c051f5887b3ae7fb961aba5e7e0e01f0fe947e4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231018.0.234104/kopia-20231018.0.234104-macOS-arm64.tar.gz"
    sha256 "70f9f08ec9ac7d84cf1ed9ce758737ec04f3b0c3c662dac74f7169449030b664"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231018.0.234104/kopia-20231018.0.234104-linux-x64.tar.gz"
    sha256 "0ffc69eba441d16468b590c257e8bfc89b991f67d16d7e03b37d9827b658db20"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231018.0.234104/kopia-20231018.0.234104-linux-arm.tar.gz"
    sha256 "61f295d1b4a645a687320e674d1d53f085b516b3c92f17faba229f7a5d44e4c0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231018.0.234104/kopia-20231018.0.234104-linux-arm64.tar.gz"
    sha256 "befb6e2cc252b62789431ddc2c79f2c77e50e646b97a4b04b1fab4b0edc74b5e"
  end

  def install
    bin.install "kopia"
  end
end
