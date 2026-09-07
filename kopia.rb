# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260907.0.54833"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260907.0.54833/kopia-20260907.0.54833-macOS-x64.tar.gz"
    sha256 "88feb8314d10a27610340618593bec5f2f5feb28b7617859c183cd431e42c1ac"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260907.0.54833/kopia-20260907.0.54833-macOS-arm64.tar.gz"
    sha256 "9f45864fe3c73b1de59aff5ba14e7e0f462a890007f8e9c313f48b916e18ec4d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260907.0.54833/kopia-20260907.0.54833-linux-x64.tar.gz"
    sha256 "f4f338de193adfbf2b9345c31fa9562194fc0bb13eef2248a0b1297f1726c391"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260907.0.54833/kopia-20260907.0.54833-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260907.0.54833/kopia-20260907.0.54833-linux-arm64.tar.gz"
    sha256 "651fe5444a854167cc5462e15b0157e612fc0753696b54475e3e73c17249e215"
  end

  def install
    bin.install "kopia"
  end
end
