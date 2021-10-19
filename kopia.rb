# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211019.0.85635"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.85635/kopia-20211019.0.85635-macOS-x64.tar.gz"
    sha256 "2e1500429826087608bfad3f40fb78742effaced4dee37f43e8234d9d2b2c938"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.85635/kopia-20211019.0.85635-macOS-arm64.tar.gz"
    sha256 "931ff784da832447433678ca875f56053b7e2ab10ffb39e20e2518af191e9c9a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.85635/kopia-20211019.0.85635-linux-x64.tar.gz"
    sha256 "1095d4ab4d4472f74c6f66c3c1c150830869aa9fd40def54a88161239961f670"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.85635/kopia-20211019.0.85635-linux-arm.tar.gz"
    sha256 "b109b79c95e92cd5edb356a4c89e230067a5642261733d88cf05c1036d23de2d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.85635/kopia-20211019.0.85635-linux-arm64.tar.gz"
    sha256 "643e0ff5fd3ed3bd1cd68ba258a1c09d123009125d045eacf49cb1e1c6741600"
  end

  def install
    bin.install "kopia"
  end
end
