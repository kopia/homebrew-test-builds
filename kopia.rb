# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220614.0.180945"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.180945/kopia-20220614.0.180945-macOS-x64.tar.gz"
    sha256 "117a34939d3dc7092bd5bcae61e8161fdf9e26ec6be29f7c656bd7f3e0e007d4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.180945/kopia-20220614.0.180945-macOS-arm64.tar.gz"
    sha256 "c466dad30af217f004e8c6931026d49c4d0e2dcdcfd5203cfdef5ecd61487050"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.180945/kopia-20220614.0.180945-linux-x64.tar.gz"
    sha256 "6721a73e69d3127457436d18e36d3f6bfb6745d432da61a2c496fc7046c8752a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.180945/kopia-20220614.0.180945-linux-arm.tar.gz"
    sha256 "166e4e1dd531b4832a95d83471bfe21b6f75ad2fd54640d0d4f968f4b9648a21"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.180945/kopia-20220614.0.180945-linux-arm64.tar.gz"
    sha256 "cc4a4ce4b829766bd133bb5bcba54b3db6aee8ba7bd5b38d7a2e8986d149dd50"
  end

  def install
    bin.install "kopia"
  end
end
