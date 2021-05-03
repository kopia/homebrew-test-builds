# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210503.0.102800"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210503.0.102800/kopia-20210503.0.102800-macOS-x64.tar.gz"
    sha256 "9583817eb9749feeb83420bb1af42def574c7906a6c601bccff3e37e233dd1f1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210503.0.102800/kopia-20210503.0.102800-macOS-arm64.tar.gz"
    sha256 "2a7b78dfdc4021e0eb51f1f5300d73688ddf4e1e48a4f4f81f3d284fca916088"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210503.0.102800/kopia-20210503.0.102800-linux-x64.tar.gz"
    sha256 "3998038b9168d480dde66d96bb3f8ebaf97142ffb4ef554d8807ed9438ae85a0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210503.0.102800/kopia-20210503.0.102800-linux-arm.tar.gz"
    sha256 "3f438edcc3cf4a5c407e51b3eab5bd0190f152d277c92f35edd8fb84efea77bd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210503.0.102800/kopia-20210503.0.102800-linux-arm64.tar.gz"
    sha256 "c9a637f733fd45900170cd3a3e2a807e6857e8ac1901c5414d10ceb63809bb43"
  end

  def install
    bin.install "kopia"
  end
end
