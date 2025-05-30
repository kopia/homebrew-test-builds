# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250530.0.172206"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250530.0.172206/kopia-20250530.0.172206-macOS-x64.tar.gz"
    sha256 "b148815d3bda4995a4d8c0f4b73ed67b8f7fbd91a5e074bd29c7bdf32bfbcd84"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250530.0.172206/kopia-20250530.0.172206-macOS-arm64.tar.gz"
    sha256 "78ec72056a3ac7a6ddc764f848413ebc3b45a341d5e0cd92228fd71fa54e38f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250530.0.172206/kopia-20250530.0.172206-linux-x64.tar.gz"
    sha256 "b798a33399d6b6f0fa8548277d371bf50ef7794b52008e840d3f398c7fe5dfe2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250530.0.172206/kopia-20250530.0.172206-linux-arm.tar.gz"
    sha256 "5810131035811889e4c60e5c7a1b217df641007614180f84268c92bb84e7ba0b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250530.0.172206/kopia-20250530.0.172206-linux-arm64.tar.gz"
    sha256 "aa2fc9521f9ecb3989b04feef7fa49ffde62989fef798e4e0627046dbc410b73"
  end

  def install
    bin.install "kopia"
  end
end
