# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221203.0.194100"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221203.0.194100/kopia-20221203.0.194100-macOS-x64.tar.gz"
    sha256 "d278ed58edf33380397d2885ae39e9eaee9f27d935fdf4b9b7694899896e1170"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221203.0.194100/kopia-20221203.0.194100-macOS-arm64.tar.gz"
    sha256 "703acfa222b58d1e06c032fb7d871aada4a1a0afd71478a34659f6ef58fc477b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221203.0.194100/kopia-20221203.0.194100-linux-x64.tar.gz"
    sha256 "f2c50da153494475304f122ed3ca6ee6e6c841dd4c2abee6a2f25bfb9707c1c9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221203.0.194100/kopia-20221203.0.194100-linux-arm.tar.gz"
    sha256 "e45cd986a26b180704d61deb98b34e7cbc1075783e38cf14f28ef98fddea7112"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221203.0.194100/kopia-20221203.0.194100-linux-arm64.tar.gz"
    sha256 "4489870f7f2148fba1d62ff199c513f202b4a763673b12b11299c091b597a672"
  end

  def install
    bin.install "kopia"
  end
end
