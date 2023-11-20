# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231117.0.210212"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231117.0.210212/kopia-20231117.0.210212-macOS-x64.tar.gz"
    sha256 "707103d2b4cb2850166885815f6f9969a5c9ee121431fd754ebaff4d5274ba2b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231117.0.210212/kopia-20231117.0.210212-macOS-arm64.tar.gz"
    sha256 "210fec221ef5ed3ff91f611961948735f5d60c95c7b33b2a5d2676d0410c3199"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231117.0.210212/kopia-20231117.0.210212-linux-x64.tar.gz"
    sha256 "b80af5a9912878103d0190caef166860f9f0b05fc3b38720b2fb19e763564a8a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231117.0.210212/kopia-20231117.0.210212-linux-arm.tar.gz"
    sha256 "96f47a4e1e1388a91c7878b1b835a3a5ab5ed027b1591daf35594542f9862a30"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231117.0.210212/kopia-20231117.0.210212-linux-arm64.tar.gz"
    sha256 "c9d460242e6994a32da199ccf0360668f0cf8db221e39f0af1b91972efba4ec9"
  end

  def install
    bin.install "kopia"
  end
end
