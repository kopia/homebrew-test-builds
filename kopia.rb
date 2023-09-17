# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230917.0.83319"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.83319/kopia-20230917.0.83319-macOS-x64.tar.gz"
    sha256 "8c9e1eb4f3ee7e9d514f383cc5a153eae7e2423f64dff47ebef3741d1e5c9951"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.83319/kopia-20230917.0.83319-macOS-arm64.tar.gz"
    sha256 "3b89d701268bf761ea4e4fddf61e4dcd71938b3cd112216b0dc7957d72d5b00d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.83319/kopia-20230917.0.83319-linux-x64.tar.gz"
    sha256 "66da7ee2f5b8a3b63e70f7205a67a6062993c3285ad0d7f29739c03346e64c27"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.83319/kopia-20230917.0.83319-linux-arm.tar.gz"
    sha256 "ccf4721ec84e0597f61eb2e718a9eb8c36a4b434227e1c093552aa9db63843e1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.83319/kopia-20230917.0.83319-linux-arm64.tar.gz"
    sha256 "d94bc761ef6ee33fc79a7bb3556d955c4ec081c8db1527ee248d77809c1f59c6"
  end

  def install
    bin.install "kopia"
  end
end
