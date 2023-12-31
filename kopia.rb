# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231231.0.140951"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231231.0.140951/kopia-20231231.0.140951-macOS-x64.tar.gz"
    sha256 "149fc1ba9bba511b88440d0006ec2f32e089a6585eb9d2d2b4a84685694c9d3a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231231.0.140951/kopia-20231231.0.140951-macOS-arm64.tar.gz"
    sha256 "e2052c0b8eb99d9ad9acd35124425914a9ae1811d191c6a39519b4547586531c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231231.0.140951/kopia-20231231.0.140951-linux-x64.tar.gz"
    sha256 "dead928ebaac550425ca3c6fdb0999407d9fea12584fa511a587d1efd450b03d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231231.0.140951/kopia-20231231.0.140951-linux-arm.tar.gz"
    sha256 "ff245d654f93b3d7ac038b5b4502ac22040f75a200d9ae36edb85ea090a4ed90"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231231.0.140951/kopia-20231231.0.140951-linux-arm64.tar.gz"
    sha256 "78bc85982336343b32775e3a9227a3f598c85f851b00dc8eecd64f13d78d6b64"
  end

  def install
    bin.install "kopia"
  end
end
