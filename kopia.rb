# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240603.0.174135"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240603.0.174135/kopia-20240603.0.174135-macOS-x64.tar.gz"
    sha256 "0deaa87650b3009501d1db8b1a0429f97dca904d46830eb4d60c69752875af03"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240603.0.174135/kopia-20240603.0.174135-macOS-arm64.tar.gz"
    sha256 "91c58f784239e3bbee07c4d190c69bd8de77a783f52422daacd91db93657d8f6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240603.0.174135/kopia-20240603.0.174135-linux-x64.tar.gz"
    sha256 "ab86a8cbfe52489840eef5d62b7ee89e6d2f650d9589e5ee9c7d68481ef61feb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240603.0.174135/kopia-20240603.0.174135-linux-arm.tar.gz"
    sha256 "fab570ff33d2084b51242577be8bbf6635bb6fac1693fd92bdb1333867b14a05"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240603.0.174135/kopia-20240603.0.174135-linux-arm64.tar.gz"
    sha256 "a8c86fc43564d25dc50b25ccc3d345147b7b1a25b2b8a0ac9e3c580bd820d550"
  end

  def install
    bin.install "kopia"
  end
end
