# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230911.0.224936"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230911.0.224936/kopia-20230911.0.224936-macOS-x64.tar.gz"
    sha256 "b201764566e2fdc01d4bcce81d9e587b101e67139f76615b59c679617e3a604a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230911.0.224936/kopia-20230911.0.224936-macOS-arm64.tar.gz"
    sha256 "03d0c55b506b2fefeeaa4a8fb40f91bbe895f1c03ba8a058a9625e9e28a78a5c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230911.0.224936/kopia-20230911.0.224936-linux-x64.tar.gz"
    sha256 "4a5bc77c318942c8caa2156d1fc6924f4016aca650096b29cd9fb59b1e0326d9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230911.0.224936/kopia-20230911.0.224936-linux-arm.tar.gz"
    sha256 "76cfe946208166ccf273c793885afe54d7fbee488205a0e9522dfcbea6317fe3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230911.0.224936/kopia-20230911.0.224936-linux-arm64.tar.gz"
    sha256 "f9584baa0aa5f0363bbde8efa5bfe65d8baba8028290d3086d1c2bff50e83ca0"
  end

  def install
    bin.install "kopia"
  end
end
