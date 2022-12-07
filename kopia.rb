# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221206.0.183355"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.183355/kopia-20221206.0.183355-macOS-x64.tar.gz"
    sha256 "3c158d1da1f12185be4e646047dcc17035012397ce1be869fac519fef754c93f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.183355/kopia-20221206.0.183355-macOS-arm64.tar.gz"
    sha256 "828eb4117c082291c26df499136c303912ca6ff51b36db5453c93f85cb0158da"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.183355/kopia-20221206.0.183355-linux-x64.tar.gz"
    sha256 "f69a82cfdf5d9c9a1cde69985b29cc4c3ae9f1977c949222a902233b59999ce5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.183355/kopia-20221206.0.183355-linux-arm.tar.gz"
    sha256 "147eb1dd417ae4040f613ae611b34e6fb2a364f7babf953969f39a7970ceff7f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.183355/kopia-20221206.0.183355-linux-arm64.tar.gz"
    sha256 "3e1af1eac9f0899db63f19689afd61c245d98d55fa4e3f7f287c4f2a6ad63a33"
  end

  def install
    bin.install "kopia"
  end
end
