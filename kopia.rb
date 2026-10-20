# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261020.0.13319"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261020.0.13319/kopia-20261020.0.13319-macOS-x64.tar.gz"
    sha256 "3349019cefd36d5cd9251c5363d48e97017c00729d310d96f60686667f87e5b4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261020.0.13319/kopia-20261020.0.13319-macOS-arm64.tar.gz"
    sha256 "3c85f7008c9a9394416d0a12f42042411ccb55b7e743c9fd7c1a1e737ea4367a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261020.0.13319/kopia-20261020.0.13319-linux-x64.tar.gz"
    sha256 "fdc3281510caceec6cd57cd912ede455590a6279fa1cef7f3df482ef54b46d8a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261020.0.13319/kopia-20261020.0.13319-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261020.0.13319/kopia-20261020.0.13319-linux-arm64.tar.gz"
    sha256 "a2ab91840cad223e0dc9643bfbe79804e65d4e7444d0fe9c96837866c1e1d78c"
  end

  def install
    bin.install "kopia"
  end
end
