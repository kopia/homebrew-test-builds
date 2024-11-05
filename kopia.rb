# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241104.0.173659"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241104.0.173659/kopia-20241104.0.173659-macOS-x64.tar.gz"
    sha256 "66e36c81240d5e026743741d18d9e722600aad7a7d90480b396dfa2751f65363"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241104.0.173659/kopia-20241104.0.173659-macOS-arm64.tar.gz"
    sha256 "4e8b464c805ea676126adb06867933847a4c183d45c1834cb69158bad23558aa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241104.0.173659/kopia-20241104.0.173659-linux-x64.tar.gz"
    sha256 "79191c839de06dd5d25265d5aa50e9e90f6b3ab98034fb67df54b08a5c6a23d4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241104.0.173659/kopia-20241104.0.173659-linux-arm.tar.gz"
    sha256 "e3265b59467474e2846ba7c50f88841e17a2215c3248e4c0b8bd231d7aee4e9d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241104.0.173659/kopia-20241104.0.173659-linux-arm64.tar.gz"
    sha256 "d180b9978091c8a50960b594fcdbe20579345c9b4506b17fb7af388ecf75a5d4"
  end

  def install
    bin.install "kopia"
  end
end
