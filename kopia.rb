# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261001.0.35905"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.35905/kopia-20261001.0.35905-macOS-x64.tar.gz"
    sha256 "21a27579ed5dbe4bec4732ea57993f710bdfc6286eebfa30059dadd8a66060d5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.35905/kopia-20261001.0.35905-macOS-arm64.tar.gz"
    sha256 "625309c5746824c397e32cac8b96af7dad390e6e8ec44f7280ce2921d1d9ca3f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.35905/kopia-20261001.0.35905-linux-x64.tar.gz"
    sha256 "4d22d341ebf21284b61d34fa4f0898298221acaa96e3b597812285415a26cdcb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.35905/kopia-20261001.0.35905-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.35905/kopia-20261001.0.35905-linux-arm64.tar.gz"
    sha256 "4e97500d59e13d46761a6c768862392f394a982b784a588528f12ca47426e6f4"
  end

  def install
    bin.install "kopia"
  end
end
