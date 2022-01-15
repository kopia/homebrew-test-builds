# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220115.0.121218"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220115.0.121218/kopia-20220115.0.121218-macOS-x64.tar.gz"
    sha256 "e0b5bf7631859618a8cdab4d7eeabb1e948123183b771e1f1b18b300a8c3c124"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220115.0.121218/kopia-20220115.0.121218-macOS-arm64.tar.gz"
    sha256 "ac99e01c2625e395d259c2cc8cc19df3f2a95e90235495b8af8a0dd384feca09"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220115.0.121218/kopia-20220115.0.121218-linux-x64.tar.gz"
    sha256 "703c4b952c4b2463f9f3471b5a9693f736d2b4508deef05f65b587cb4c9f63cb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220115.0.121218/kopia-20220115.0.121218-linux-arm.tar.gz"
    sha256 "c7d38956c695a028c01e0b85211a0003312592bf83a34d6de2e6f1c45bff9eb7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220115.0.121218/kopia-20220115.0.121218-linux-arm64.tar.gz"
    sha256 "81216447d6c0685ff75131eb70091989337e54bbb70d5b439b2245906c94b485"
  end

  def install
    bin.install "kopia"
  end
end
