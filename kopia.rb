# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211019.0.92257"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.92257/kopia-20211019.0.92257-macOS-x64.tar.gz"
    sha256 "82e70d321e8a89a502f1556ce2c4dc1c7332b09b296a12fd14b8139eaef53f65"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.92257/kopia-20211019.0.92257-macOS-arm64.tar.gz"
    sha256 "e61bf381dd3ccb8d4fb0a0c66339b28d3c81dd2c2b58e1821288a0b9bb9f5ab1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.92257/kopia-20211019.0.92257-linux-x64.tar.gz"
    sha256 "96719c3b115abdcc25656a9fb26c35218c36ac02fb2ba0a16a5b2de78aded8a7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.92257/kopia-20211019.0.92257-linux-arm.tar.gz"
    sha256 "90ffcc5423232b7ec41eb5fe696668603d578b0761d60f1a83e684fcf254e004"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.92257/kopia-20211019.0.92257-linux-arm64.tar.gz"
    sha256 "1f75872ba453cfc6474f44b0ebef395f85955f750d762d0d36c08c63eed0566c"
  end

  def install
    bin.install "kopia"
  end
end
