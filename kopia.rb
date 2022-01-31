# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220130.0.211630"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.211630/kopia-20220130.0.211630-macOS-x64.tar.gz"
    sha256 "56e00cd2b08357c1dc89fe0b3b85908da72c6f343daec112e4d9954494cfab67"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.211630/kopia-20220130.0.211630-macOS-arm64.tar.gz"
    sha256 "467ca75aca3868966e27b0b6fcd565fbda6485dbf9e8dcd23f806ecaf5926c6f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.211630/kopia-20220130.0.211630-linux-x64.tar.gz"
    sha256 "1defdf1a0ee7d9fa234ee1ba83eb0399e4182a527b518a4d8766d8f943837f40"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.211630/kopia-20220130.0.211630-linux-arm.tar.gz"
    sha256 "117b4537edbf657a0240071bec4e6b3494f8f79fc012b212b861e1e5821ae29c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.211630/kopia-20220130.0.211630-linux-arm64.tar.gz"
    sha256 "0948796d4f8124626a89fb70374641145c66bb5c379c779d2e3eb9914586dfb3"
  end

  def install
    bin.install "kopia"
  end
end
