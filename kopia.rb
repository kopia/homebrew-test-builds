# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.75154"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.75154/kopia-20220202.0.75154-macOS-x64.tar.gz"
    sha256 "38aac3acc612ed4eb4f0eb7af34fd486d4621fa82a389b0265af7d25b2e5524a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.75154/kopia-20220202.0.75154-macOS-arm64.tar.gz"
    sha256 "8fdbf1f2e73357b88b958a0e206489a44ff6f8e55b2074f5ca7ec2a40bf929fb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.75154/kopia-20220202.0.75154-linux-x64.tar.gz"
    sha256 "e5c4104f6e5c169115d1523e9ac658e97273eb2407e54ec6d73d93aa098693fd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.75154/kopia-20220202.0.75154-linux-arm.tar.gz"
    sha256 "0538aeef4ee4bc84c8a43a634b64b5f16e84a80783e5035caed5acc5a206b4d3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.75154/kopia-20220202.0.75154-linux-arm64.tar.gz"
    sha256 "3d355c46d2115f44c5ed3e3ec49f1f31c0e1e07c66ebaac3bc0c6653bca82676"
  end

  def install
    bin.install "kopia"
  end
end
