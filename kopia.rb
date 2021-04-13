# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210412.0.201249"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.201249/kopia-20210412.0.201249-macOS-x64.tar.gz"
    sha256 "8be88132e562972d9abf9960299e267f8c7d78123f341fec6c61216a8bccd5d0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.201249/kopia-20210412.0.201249-macOS-arm64.tar.gz"
    sha256 "39022424a3aced5bd428e53f1a47c2267dcb4a381e6f78af147f0a42eb115abd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.201249/kopia-20210412.0.201249-linux-x64.tar.gz"
    sha256 "7e9c6374cea71a26cbd2078d0cff7acc3961a69c6b8fba4a35fc1c1d16982f84"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.201249/kopia-20210412.0.201249-linux-arm.tar.gz"
    sha256 "9b7afe5ff471ac6ec6caae04b1d4c5b30d5a00a93f99880a736fd177fb93d1fb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.201249/kopia-20210412.0.201249-linux-arm64.tar.gz"
    sha256 "077708c1bccd362b3e7b44ff302d3912a0563d75474cf70956f01525c6a54220"
  end

  def install
    bin.install "kopia"
  end
end
