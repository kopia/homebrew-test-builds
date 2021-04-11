# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210411.0.125040"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.125040/kopia-20210411.0.125040-macOS-x64.tar.gz"
    sha256 "b64dfaab9fd2d0d168abc20e4527657f72daf02623b84eb1d0d8c9e9dae1af23"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.125040/kopia-20210411.0.125040-macOS-arm64.tar.gz"
    sha256 "2702deff6f5b09eff3a22757a8bc987a5a4f0a62c69c47cb2448d02b2bdac579"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.125040/kopia-20210411.0.125040-linux-x64.tar.gz"
    sha256 "516e9244ed152fdc2ba152cd47aac37cc7dbbe003b8cdac67f105eb0b19816b2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.125040/kopia-20210411.0.125040-linux-arm.tar.gz"
    sha256 "d7069dd4e2d9dd858c0ac7253c1f49e05be2127b809b23e0902a00e8c7fd53b9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.125040/kopia-20210411.0.125040-linux-arm64.tar.gz"
    sha256 "dc30f9161a3524f2e686c47990108b62b0b9e793b6bca254ed388ba500c00777"
  end

  def install
    bin.install "kopia"
  end
end
