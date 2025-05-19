# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250519.0.15617"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250519.0.15617/kopia-20250519.0.15617-macOS-x64.tar.gz"
    sha256 "e9dbced9258643772b1066c72d2c1eb95c3f7fe7fdc8f833b5fc3dec70b18bdc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250519.0.15617/kopia-20250519.0.15617-macOS-arm64.tar.gz"
    sha256 "1dc6e33148f1db17367b76be12f910790b324046b38fa7486cc4bfca4427e0c7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250519.0.15617/kopia-20250519.0.15617-linux-x64.tar.gz"
    sha256 "5ccd5c97dbfcbf8b6c3e408512715dbf48cb44fd27551d2507356b1d2f2adf4f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250519.0.15617/kopia-20250519.0.15617-linux-arm.tar.gz"
    sha256 "19b557281c583547b3aea411f015496a5c19a724460f56d62d1de9cb7fa98227"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250519.0.15617/kopia-20250519.0.15617-linux-arm64.tar.gz"
    sha256 "430091a6061a9fe5fd3f6f87d65fac4088b6b8e6eb07361ac2943ddadfef4082"
  end

  def install
    bin.install "kopia"
  end
end
