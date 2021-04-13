# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210412.0.201600"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.201600/kopia-20210412.0.201600-macOS-x64.tar.gz"
    sha256 "95e3d364d585b4640a3646fc6581fcac7e806cbc2f6c9f642a39815ed87475f2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.201600/kopia-20210412.0.201600-macOS-arm64.tar.gz"
    sha256 "a7848613df2fb7852f48e3281ae7b474851541eb867afb20e5443c3202e805e2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.201600/kopia-20210412.0.201600-linux-x64.tar.gz"
    sha256 "6d00d18d70d182669e135b6bf61b50810faf14c876895578ec2ca7d53525c26a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.201600/kopia-20210412.0.201600-linux-arm.tar.gz"
    sha256 "d32df24caba16930c446a350e4ab063b43ae3f3330c60db7351f6b7ea7346ebe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.201600/kopia-20210412.0.201600-linux-arm64.tar.gz"
    sha256 "b31825f537efe0b619ced32a2f92105a37f96711e25915d9ac242a79132fef3d"
  end

  def install
    bin.install "kopia"
  end
end
