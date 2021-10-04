# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211003.0.171602"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.171602/kopia-20211003.0.171602-macOS-x64.tar.gz"
    sha256 "9202fcbdd3d15bf0c8c80e4337b9b5dc2ca36c0f8f5237c64e3195344fae0ef7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.171602/kopia-20211003.0.171602-macOS-arm64.tar.gz"
    sha256 "58ac657497b423aa9e1d14f334c60899984c0e3a4242a839e04b669e19028b0d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.171602/kopia-20211003.0.171602-linux-x64.tar.gz"
    sha256 "f5969b4eef0d75cc211da19374ac22f6e12bfdce7f9bf92c7e8ba793622e59e8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.171602/kopia-20211003.0.171602-linux-arm.tar.gz"
    sha256 "93c168d635f055f5a70f3109962ded1cd1fa48473bfbee77095f73f0ac25a1ad"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.171602/kopia-20211003.0.171602-linux-arm64.tar.gz"
    sha256 "464efb5db96b4fde93e01139512171c981bb78bfd13b28153166fec1661c8a9c"
  end

  def install
    bin.install "kopia"
  end
end
