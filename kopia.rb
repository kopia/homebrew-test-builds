# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210605.0.133420"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.133420/kopia-20210605.0.133420-macOS-x64.tar.gz"
    sha256 "fe5138dcc42fc7b5bd583abf1ae3016a6d4a4888171274f8550eb2c1b5d16b59"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.133420/kopia-20210605.0.133420-macOS-arm64.tar.gz"
    sha256 "69d7903732c573f8228e572beed72d2443d5064d8d8a418977dfadbe052fda15"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.133420/kopia-20210605.0.133420-linux-x64.tar.gz"
    sha256 "745f91a90ae8f35e719bfca6749df65a3fa72153f79bfdf26a13c131592373aa"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.133420/kopia-20210605.0.133420-linux-arm.tar.gz"
    sha256 "b3671a2bb157a52a63bc2578946f7eb601e3fc3b0a3e1032a99f8d5f9a5294ad"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.133420/kopia-20210605.0.133420-linux-arm64.tar.gz"
    sha256 "d1a5be8660a99c9137d8172c73d9e95f95ad64bffdb554d9ecf6a35234e64681"
  end

  def install
    bin.install "kopia"
  end
end
