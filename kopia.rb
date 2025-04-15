# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250414.0.173528"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250414.0.173528/kopia-20250414.0.173528-macOS-x64.tar.gz"
    sha256 "1106222c5cf86829384f0e293401e6fc961423ec61e9ae636ebe246609d385ef"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250414.0.173528/kopia-20250414.0.173528-macOS-arm64.tar.gz"
    sha256 "46e39d05a4dcffbedb4ad1017f895686b069d1d041dd8a5b634513eb9cf862af"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250414.0.173528/kopia-20250414.0.173528-linux-x64.tar.gz"
    sha256 "811c95247d093200480f7d100b8706d4bb6527ab566293a7de8d69e6638846f8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250414.0.173528/kopia-20250414.0.173528-linux-arm.tar.gz"
    sha256 "6d6281002fe26a5daa41b18d6bdb926220e7d7b2eae22e0ab8b8e662aeeb35d4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250414.0.173528/kopia-20250414.0.173528-linux-arm64.tar.gz"
    sha256 "9fdc1008e794e636284e0a32d76620deda57bd84f3e5c2bf8704b11d112b868e"
  end

  def install
    bin.install "kopia"
  end
end
