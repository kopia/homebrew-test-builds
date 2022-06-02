# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220601.0.221817"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220601.0.221817/kopia-20220601.0.221817-macOS-x64.tar.gz"
    sha256 "720c713e2e8e64758634b0f389f8d857465378039be9a4d6e26e0b534d40905c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220601.0.221817/kopia-20220601.0.221817-macOS-arm64.tar.gz"
    sha256 "976a68d068098805de9a7e8e4dbfaaff73a273dd44ba05065f507cd41ec38a2c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220601.0.221817/kopia-20220601.0.221817-linux-x64.tar.gz"
    sha256 "565bc5a7a76df6df5f92d2b49f604bedef27609f79a82a2e8c611b85bf3fc259"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220601.0.221817/kopia-20220601.0.221817-linux-arm.tar.gz"
    sha256 "5b4b79d683e79dc2bda1493b595111ed0f0277111e352123b3fde89e30ceacaf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220601.0.221817/kopia-20220601.0.221817-linux-arm64.tar.gz"
    sha256 "a358f1d3d33161c64a05b7bf892d994c43c3a5f912a1eb7576ca08deaea07c33"
  end

  def install
    bin.install "kopia"
  end
end
