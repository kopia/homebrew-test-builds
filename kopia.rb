# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231101.0.110001"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231101.0.110001/kopia-20231101.0.110001-macOS-x64.tar.gz"
    sha256 "9f997806f712b45e4137a3b327392bec6996099942f930e294ccbfe3eb4eab8a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231101.0.110001/kopia-20231101.0.110001-macOS-arm64.tar.gz"
    sha256 "fe191fbf35ee6adbc32171eda48e253ab77a7c2e8bac5a19f878274132130e5f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231101.0.110001/kopia-20231101.0.110001-linux-x64.tar.gz"
    sha256 "c587b31c6dd6b452969180d470ec6a5850ec9e42780315a7e7b86f8119107f6e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231101.0.110001/kopia-20231101.0.110001-linux-arm.tar.gz"
    sha256 "a2f7437d8614f7a36b9e716599a75eda1b15fa4636adfaf0854cee77e822d58e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231101.0.110001/kopia-20231101.0.110001-linux-arm64.tar.gz"
    sha256 "c6e8804f042841a3d3ec378fba90bd7a997dc62270ef559f763db40d5801b022"
  end

  def install
    bin.install "kopia"
  end
end
