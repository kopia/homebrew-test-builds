# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210719.0.215556"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210719.0.215556/kopia-20210719.0.215556-macOS-x64.tar.gz"
    sha256 "eba090b040066817d8bf72d4fea70857e89efd2f465f1b913f55e7611a3a348c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210719.0.215556/kopia-20210719.0.215556-macOS-arm64.tar.gz"
    sha256 "f51c8d00d14a1e528a12151f52d963dde5442e5ab5a4fde4a3dd0dad68a5e575"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210719.0.215556/kopia-20210719.0.215556-linux-x64.tar.gz"
    sha256 "fc55c386810eee045860a6ca4dd8f29cf9f20a3063601540e246d411a31882f9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210719.0.215556/kopia-20210719.0.215556-linux-arm.tar.gz"
    sha256 "415a594b0086003d161cbb3827985df13af62f29fc7f2e1b520a6a09e2fdb718"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210719.0.215556/kopia-20210719.0.215556-linux-arm64.tar.gz"
    sha256 "d70e714f657c5cbca24db40902e4de33a59561a8fa14f191c28d4d266fce5c55"
  end

  def install
    bin.install "kopia"
  end
end
