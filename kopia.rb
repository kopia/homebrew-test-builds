# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250501.0.223722"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.223722/kopia-20250501.0.223722-macOS-x64.tar.gz"
    sha256 "0a3bf9462bb2596a01b33b3136dc5daa1cc69f3b9f709d6e79aa6eefd3373ca4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.223722/kopia-20250501.0.223722-macOS-arm64.tar.gz"
    sha256 "0446d967606faf201a50d023273061eb7260ac0f930b2e73f1eeff8e93c60d0e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.223722/kopia-20250501.0.223722-linux-x64.tar.gz"
    sha256 "c60a9ebcc04ce163fd043552224eec4f2967762373cfc10e26239716408f2450"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.223722/kopia-20250501.0.223722-linux-arm.tar.gz"
    sha256 "21bffa7de9b3e0724a3bf47036dece7644ab806a68ebd1f18ade19e24520884c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.223722/kopia-20250501.0.223722-linux-arm64.tar.gz"
    sha256 "76087b435aba66f01236e4a6ace65b9860902a8db8ff8aa8c421ef1a94b6debe"
  end

  def install
    bin.install "kopia"
  end
end
