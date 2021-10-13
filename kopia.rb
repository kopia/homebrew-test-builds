# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211013.0.85457"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.85457/kopia-20211013.0.85457-macOS-x64.tar.gz"
    sha256 "446609f02922a96a084414fc70a72db047911d506db7eafdb731672b9d85846e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.85457/kopia-20211013.0.85457-macOS-arm64.tar.gz"
    sha256 "7dc32e0f332c90377b9319d01f2f610b1466ec5840fb82e180218c713a5a97dc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.85457/kopia-20211013.0.85457-linux-x64.tar.gz"
    sha256 "b26a1da6c5aee16c1a99ca1f313bfe7917b5935458cd51c0d7d5c0d54409d499"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.85457/kopia-20211013.0.85457-linux-arm.tar.gz"
    sha256 "214a95e5a9929ae7b1c690b66d211466a22c08457cb513868bdf44afeeec2a3c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.85457/kopia-20211013.0.85457-linux-arm64.tar.gz"
    sha256 "366b2d11da254f736d37fd26131c0c6946b13103d45d3fa8ad54c05b559cc6db"
  end

  def install
    bin.install "kopia"
  end
end
