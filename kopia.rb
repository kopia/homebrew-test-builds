# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240506.0.193429"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240506.0.193429/kopia-20240506.0.193429-macOS-x64.tar.gz"
    sha256 "82393bc52f281d05c932acd3ebbd5a1f1ac53c25cab469f1df42aeeab647f118"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240506.0.193429/kopia-20240506.0.193429-macOS-arm64.tar.gz"
    sha256 "002d1d6b7a6667af1608ed859a91d54803ec7fe646c59c6f27ea21b44b02b506"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240506.0.193429/kopia-20240506.0.193429-linux-x64.tar.gz"
    sha256 "42c40d856a69b3921477cc7198d3aaa648ec0c8418c2b189dc08f870fc952e2f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240506.0.193429/kopia-20240506.0.193429-linux-arm.tar.gz"
    sha256 "c1c7b3c6571dd5e2f4955ed26ddcea20e2b621bfc4e13520aac2c14d92f84046"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240506.0.193429/kopia-20240506.0.193429-linux-arm64.tar.gz"
    sha256 "279c7ac2b5f25d08b0c3e066e345e11754cca1a6ffe5c28bb7af87b7f54e3d0f"
  end

  def install
    bin.install "kopia"
  end
end
