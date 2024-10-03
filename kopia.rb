# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241003.0.101948"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241003.0.101948/kopia-20241003.0.101948-macOS-x64.tar.gz"
    sha256 "d1a4cb8e04c5a724cd0c52aa8dfbe544cf6a297f37aebf5bf55d07c53890e656"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241003.0.101948/kopia-20241003.0.101948-macOS-arm64.tar.gz"
    sha256 "58f6755be418ca689d44c07e9d38862d0f3822e8752059d9fe8bd8092cc6b371"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241003.0.101948/kopia-20241003.0.101948-linux-x64.tar.gz"
    sha256 "111d14d225627e95480bbc5e77adbf4ec9ec99cadd9651ca301807188888c86d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241003.0.101948/kopia-20241003.0.101948-linux-arm.tar.gz"
    sha256 "51c6f29252aa9a87494e7845df4fd0dde6025ea0f328b7f00329b7295a622509"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241003.0.101948/kopia-20241003.0.101948-linux-arm64.tar.gz"
    sha256 "24c33c87163dda053584c4b9193ba42bc8c44d3662c35653159a4763ac9d8ae6"
  end

  def install
    bin.install "kopia"
  end
end
