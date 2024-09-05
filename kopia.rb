# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240905.0.30919"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240905.0.30919/kopia-20240905.0.30919-macOS-x64.tar.gz"
    sha256 "514b5ae63b6c558644c81ec6a496230f52d1a47759ebfaa57d39fbfec4a460f3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240905.0.30919/kopia-20240905.0.30919-macOS-arm64.tar.gz"
    sha256 "532080307ff14690295a7e9f1d33ece9fc475a6d5e4c9edccd11a985f84e7cfe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240905.0.30919/kopia-20240905.0.30919-linux-x64.tar.gz"
    sha256 "37ec5959a9159e95f4693e3ce5dff0750776bb189071250eaa9da09591431022"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240905.0.30919/kopia-20240905.0.30919-linux-arm.tar.gz"
    sha256 "6bff50e4ee1d1fb5903b7de2bc313bddd1cf7417f4589eee16beb60ed2b11e01"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240905.0.30919/kopia-20240905.0.30919-linux-arm64.tar.gz"
    sha256 "c5469bb18b722fa68932068f0a3e8e57521fd4bb723f1ed616ba7d91328d3a8c"
  end

  def install
    bin.install "kopia"
  end
end
