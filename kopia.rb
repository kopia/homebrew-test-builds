# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240711.0.74905"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.74905/kopia-20240711.0.74905-macOS-x64.tar.gz"
    sha256 "5f34c7e393c4faa8b83c922506252033dcaf6f9e867ccc1c6ca3eaec20c964a6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.74905/kopia-20240711.0.74905-macOS-arm64.tar.gz"
    sha256 "0f33cc8ac03819a7bb6f858140bba9251f6b45b794fbe41ab70dcdb90eab4775"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.74905/kopia-20240711.0.74905-linux-x64.tar.gz"
    sha256 "30f40ab18922e193c9bd24108e9127465745e4bec7a0a09b8fd8a946ecd26c49"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.74905/kopia-20240711.0.74905-linux-arm.tar.gz"
    sha256 "e4476bcc89767493d408fbdad0715267edc2b66981634803b09a109ae5730765"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.74905/kopia-20240711.0.74905-linux-arm64.tar.gz"
    sha256 "213c1ca474b8942bfdd1bab063cf88aefb762367ea6b9fe83bf79dda3af5d0ce"
  end

  def install
    bin.install "kopia"
  end
end
