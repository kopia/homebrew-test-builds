# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260220.0.41449"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260220.0.41449/kopia-20260220.0.41449-macOS-x64.tar.gz"
    sha256 "b6f46c8fa5f10d6bdb07f8ddc567e146e7522ac1eb60bc6bdb8c9f9f839007f6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260220.0.41449/kopia-20260220.0.41449-macOS-arm64.tar.gz"
    sha256 "3eb371efaaeb85e5e078476e82df90f78f730ecaad57254fa920c99adc025552"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260220.0.41449/kopia-20260220.0.41449-linux-x64.tar.gz"
    sha256 "14b5a1450ea128b81d9d5aa5fc02ebc189eadd94cfea4a83ce023096b3a86184"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260220.0.41449/kopia-20260220.0.41449-linux-arm.tar.gz"
    sha256 "8f05f54ec0c19b5c97dac6d13ecc6b5bc2a0ddf0a4a587cbc44e9761dfe7f413"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260220.0.41449/kopia-20260220.0.41449-linux-arm64.tar.gz"
    sha256 "c5609d2fef47a0e70ff2d3c0672afd47a6b0821591b63c4385eb35aefd0a2943"
  end

  def install
    bin.install "kopia"
  end
end
