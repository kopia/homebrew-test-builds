# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240325.0.210745"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240325.0.210745/kopia-20240325.0.210745-macOS-x64.tar.gz"
    sha256 "2d2718aff97389438c84022455749f490da75a60f7b6f6b1a8e5f167775d070a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240325.0.210745/kopia-20240325.0.210745-macOS-arm64.tar.gz"
    sha256 "02ecc7d52bdd430375ce08c45a5ecb7d1b67b571a5fe1eafa7e9d00b5952bfe9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240325.0.210745/kopia-20240325.0.210745-linux-x64.tar.gz"
    sha256 "776054fdb039bfdf2a6194cbb2b519c5aa10aaced2cc15d6ff7a15a73d601b35"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240325.0.210745/kopia-20240325.0.210745-linux-arm.tar.gz"
    sha256 "147eccd426ee4cbdcade8f764a7781948c692a1f15bde86b20e7981a09cf79b1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240325.0.210745/kopia-20240325.0.210745-linux-arm64.tar.gz"
    sha256 "14a53db06fd3dc06f16bf87876f004fe50e5c4a23e039d08e5cab0747be2bc49"
  end

  def install
    bin.install "kopia"
  end
end
