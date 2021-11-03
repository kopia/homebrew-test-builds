# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.120729"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.120729/kopia-20211103.0.120729-macOS-x64.tar.gz"
    sha256 "8ed9f8f677dd7144f08f6c27aa43bb96e63ad1fb9fb69d8f3ce0c16b4000018a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.120729/kopia-20211103.0.120729-macOS-arm64.tar.gz"
    sha256 "6e0a50baa64c26c7efb9cf006fd4a0d343c30fff3fec7265c718fb6174137593"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.120729/kopia-20211103.0.120729-linux-x64.tar.gz"
    sha256 "87dbe010a8e330ed9b8e7599d620ad28fb9aa96c36d572f40e652df32e8fda3c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.120729/kopia-20211103.0.120729-linux-arm.tar.gz"
    sha256 "71f05e4f59bb923c4c40c3d55d15588c12530d47af5aa8012eaa2bb2ad3836ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.120729/kopia-20211103.0.120729-linux-arm64.tar.gz"
    sha256 "414deaff4b7f85c21864a1f4937e816b6eeb0024750211b09ea3077a1391ca94"
  end

  def install
    bin.install "kopia"
  end
end
