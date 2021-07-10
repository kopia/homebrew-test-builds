# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210710.0.101531"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.101531/kopia-20210710.0.101531-macOS-x64.tar.gz"
    sha256 "e3f1563da506bcf4f936662ac92cd3c15f286a92aa6789cfba7bb5ac2891ca5f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.101531/kopia-20210710.0.101531-macOS-arm64.tar.gz"
    sha256 "de981f16919f19b6ead0cbce1854dbdc3f40cee2866c649321efb4fef8ac08f5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.101531/kopia-20210710.0.101531-linux-x64.tar.gz"
    sha256 "11f55bbe104781c7ca0d63ddff4d50cf72ce66f621a36277d16694f25ac07252"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.101531/kopia-20210710.0.101531-linux-arm.tar.gz"
    sha256 "62ddd5c4ab5db01fefae3715ae85cd4ca98a12633452265d749303f707191b25"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.101531/kopia-20210710.0.101531-linux-arm64.tar.gz"
    sha256 "91f2a2d2300e3f9e1172de15a60daae0f3defbbedd51b7064f735d64d57c6211"
  end

  def install
    bin.install "kopia"
  end
end
