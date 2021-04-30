# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210429.0.214513"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210429.0.214513/kopia-20210429.0.214513-macOS-x64.tar.gz"
    sha256 "5f39b6c2e9abf50289937fe4efeaf8ecb83fd7e7f75a7c2553a7333b9450f761"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210429.0.214513/kopia-20210429.0.214513-macOS-arm64.tar.gz"
    sha256 "3c36ef50a1437625f203dc4dc31305193292a468d9cd5b7726706cea18f51b66"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210429.0.214513/kopia-20210429.0.214513-linux-x64.tar.gz"
    sha256 "b11193bd4691fa9372df596c58345422be8e2e02657e5535ec7167004c30e253"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210429.0.214513/kopia-20210429.0.214513-linux-arm.tar.gz"
    sha256 "bd6ec313cb925c54af5845d95df7292a2007f7a1393efa711a3f8648da83b6b1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210429.0.214513/kopia-20210429.0.214513-linux-arm64.tar.gz"
    sha256 "5a4663ce70f2ae9bccf8efc7f7714672a2c82c8744568c01564852f35316d450"
  end

  def install
    bin.install "kopia"
  end
end
