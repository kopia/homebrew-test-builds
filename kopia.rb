# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260915.0.234708"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260915.0.234708/kopia-20260915.0.234708-macOS-x64.tar.gz"
    sha256 "661b906563a72eff2994a361f33fbba8b0d5d131b0526ce5f687161ce8db19f3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260915.0.234708/kopia-20260915.0.234708-macOS-arm64.tar.gz"
    sha256 "d53c878c6c38b7aa9bf1b3ce9eb8bb64a0680e2ec36b50a61c3f4514bb6b7322"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260915.0.234708/kopia-20260915.0.234708-linux-x64.tar.gz"
    sha256 "39675d64aaf44a25fdb16e7182eb1e2c44d4aaca89db597d4fde9d444c1d78f7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260915.0.234708/kopia-20260915.0.234708-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260915.0.234708/kopia-20260915.0.234708-linux-arm64.tar.gz"
    sha256 "8c0e95e25c39ba87f1a532ef4a5937fd4820cbb80d1439f103bfaacf66f17a8a"
  end

  def install
    bin.install "kopia"
  end
end
