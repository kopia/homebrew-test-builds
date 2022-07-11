# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220710.0.233215"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.233215/kopia-20220710.0.233215-macOS-x64.tar.gz"
    sha256 "efbcb38fe229d262ce2a2c0e2b1fdfe877719a0dc9b43de957180d962a016a40"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.233215/kopia-20220710.0.233215-macOS-arm64.tar.gz"
    sha256 "6f1c43d396a9ee75532e20496fa129b9aa02b223828f6b6389b4812fe2707404"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.233215/kopia-20220710.0.233215-linux-x64.tar.gz"
    sha256 "83f66b40d7a53e624f59f4d3cdde2f37150d3b6dac291297f76153571ff32dd7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.233215/kopia-20220710.0.233215-linux-arm.tar.gz"
    sha256 "25fbff628699422a0ff38c2d8c7c28eb9ed2ecd5a7579a5b049c75f11e21ec56"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.233215/kopia-20220710.0.233215-linux-arm64.tar.gz"
    sha256 "54aa4681d68ca6257cfde7991443e8171003fc280cecc19304b0c74ad242f249"
  end

  def install
    bin.install "kopia"
  end
end
