# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210330.0.64459"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210330.0.64459/kopia-20210330.0.64459-macOS-x64.tar.gz"
    sha256 "146d2f13dd764865fcb19d297a9c9ade95e4d12253f4b9b1304a613d4ac3a576"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210330.0.64459/kopia-20210330.0.64459-macOS-arm64.tar.gz"
    sha256 "dac86097b72ec98b356417dd720ba923d47f68169852e7571bea24f9c164b7e3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210330.0.64459/kopia-20210330.0.64459-linux-x64.tar.gz"
    sha256 "e6c4ed9ec3a9532cd9a90d5022a4aa0de9b8e181f9d63f0fe3938e5e40c036d2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210330.0.64459/kopia-20210330.0.64459-linux-arm.tar.gz"
    sha256 "f038c825f571e9a2a2982a728c616bbe894d3bfb5e122bb5799692b47eb29e73"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210330.0.64459/kopia-20210330.0.64459-linux-arm64.tar.gz"
    sha256 "9842924bf7bc9ac07a32e5b3f13bbd1b891968aed317d6349bc8b30657b56239"
  end

  def install
    bin.install "kopia"
  end
end
