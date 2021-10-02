# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211002.0.111625"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111625/kopia-20211002.0.111625-macOS-x64.tar.gz"
    sha256 "3a671549d91c927ba127f368b968b0853fc94c699650d856931ff19fa882d08b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111625/kopia-20211002.0.111625-macOS-arm64.tar.gz"
    sha256 "73f38cbb347259483fe52c7dbc32d2b71bc7f66da044256a9031858a487cf2b5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111625/kopia-20211002.0.111625-linux-x64.tar.gz"
    sha256 "3d4e1e43505f60a338bf298047124109d91592235bd7a818f2a1b9ee0a18a1bd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111625/kopia-20211002.0.111625-linux-arm.tar.gz"
    sha256 "0fd36d6abe4a2a22c03a0fde13567ff056587b0edea0f8b18919c4b24e623660"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111625/kopia-20211002.0.111625-linux-arm64.tar.gz"
    sha256 "9b3da46d37ff7deacc7fd92631657df706d1e2bf594ae73906b40f561e9da01d"
  end

  def install
    bin.install "kopia"
  end
end
