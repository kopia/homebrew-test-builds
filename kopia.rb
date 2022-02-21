# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220220.0.165853"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220220.0.165853/kopia-20220220.0.165853-macOS-x64.tar.gz"
    sha256 "19b9177943f92341a519dc975381ca96756aee0c5f1a1af3b43584bbf27eba0e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220220.0.165853/kopia-20220220.0.165853-macOS-arm64.tar.gz"
    sha256 "ac91b8986c9b779a457c4fb99cc39acd3974732904ccdeb61ef466a9343c19c2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220220.0.165853/kopia-20220220.0.165853-linux-x64.tar.gz"
    sha256 "b5119ec0289e385d02ec2f91048eb90bbeb0d5730ab035e744ec935113caeaa1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220220.0.165853/kopia-20220220.0.165853-linux-arm.tar.gz"
    sha256 "f5e5889e28281a092e9cea494396a675a2b89ec1b246ab39c185c3e7aedb13b8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220220.0.165853/kopia-20220220.0.165853-linux-arm64.tar.gz"
    sha256 "c9543b07c12eb791bddc7600ad849bf79e762e006dcea1e7a105f281416693da"
  end

  def install
    bin.install "kopia"
  end
end
