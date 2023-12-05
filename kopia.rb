# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231204.0.182043"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231204.0.182043/kopia-20231204.0.182043-macOS-x64.tar.gz"
    sha256 "c0c72a97efb0e8a21f8aef9ff8c390bf6c7467eea51b8283d0782f34afe54784"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231204.0.182043/kopia-20231204.0.182043-macOS-arm64.tar.gz"
    sha256 "172786b6553c0f8cc237a02ebdeba5c0c6ee5626eaa4aa9a046d1236b2a9f91b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231204.0.182043/kopia-20231204.0.182043-linux-x64.tar.gz"
    sha256 "af34c64c21ec506469b97d4d2e335185fa828d323dfa0a31ce503c1e028468df"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231204.0.182043/kopia-20231204.0.182043-linux-arm.tar.gz"
    sha256 "d5f7d0613a73ce731bcc5d52cfe72661c457992a0f8e1006f23d5df87b8b9395"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231204.0.182043/kopia-20231204.0.182043-linux-arm64.tar.gz"
    sha256 "82d4ef1e76a37d866632a4923ab7040bb212e1b0f3ba6c8fe305f27e790c7996"
  end

  def install
    bin.install "kopia"
  end
end
