# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220703.0.194427"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.194427/kopia-20220703.0.194427-macOS-x64.tar.gz"
    sha256 "72502767bb7202c0a847c3f06abd810881815552d908d010148fdc9254d5f938"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.194427/kopia-20220703.0.194427-macOS-arm64.tar.gz"
    sha256 "175b689ca5280fab48ca5e62f7f274dd730bbd6701c1be06f000122fc1c31634"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.194427/kopia-20220703.0.194427-linux-x64.tar.gz"
    sha256 "b4ef6793506522b8878f0805e388f26a8a263c5ebfc249bdfbe0c9fba26505dd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.194427/kopia-20220703.0.194427-linux-arm.tar.gz"
    sha256 "0766f7e8851a71b74799559cd687f84cb00f2923af51a1fa684db59fc2161faa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.194427/kopia-20220703.0.194427-linux-arm64.tar.gz"
    sha256 "8080e2b23170701f4a075e99d274f223163c36f2cf3da2d426835e57fd9ae071"
  end

  def install
    bin.install "kopia"
  end
end
