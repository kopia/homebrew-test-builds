# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260906.0.234954"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.234954/kopia-20260906.0.234954-macOS-x64.tar.gz"
    sha256 "f80eba767b41e1fb81be2ee930ac028a82023e0793b41ebcccc7bcc960fd93ba"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.234954/kopia-20260906.0.234954-macOS-arm64.tar.gz"
    sha256 "d94112c935613780890e6a215dd4ebe7542a84854b13f394bf2db96a945ed32f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.234954/kopia-20260906.0.234954-linux-x64.tar.gz"
    sha256 "59db8535b6644f1539df7bc215d9c1511426c104cf162818192850d67f0f85bb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.234954/kopia-20260906.0.234954-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.234954/kopia-20260906.0.234954-linux-arm64.tar.gz"
    sha256 "1a890bb1c8cf7bfccce6a5affed705d19649d6f29d11fe1409a49e00d6ba667a"
  end

  def install
    bin.install "kopia"
  end
end
