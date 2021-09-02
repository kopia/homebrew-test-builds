# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210902.0.55301"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.55301/kopia-20210902.0.55301-macOS-x64.tar.gz"
    sha256 "ccb1625d945ff14bd63ceefe12af47781b43951fbdb7f33013bddee77978fc44"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.55301/kopia-20210902.0.55301-macOS-arm64.tar.gz"
    sha256 "18a502e013b836d8d6228aa0aee5e152b025f8803deeda961a39a545decf9749"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.55301/kopia-20210902.0.55301-linux-x64.tar.gz"
    sha256 "6459f1373353378e6f53b2bb13020104c2bc83d74418a65b973e4dadd0e843b9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.55301/kopia-20210902.0.55301-linux-arm.tar.gz"
    sha256 "425f49001faeb415c7065910b6e41049e9392543d2cf74e4ccb373333679e611"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.55301/kopia-20210902.0.55301-linux-arm64.tar.gz"
    sha256 "1fecaf51a73cf25058c34f1729a6c60ac1d88c13062a5dc397424378f779e050"
  end

  def install
    bin.install "kopia"
  end
end
