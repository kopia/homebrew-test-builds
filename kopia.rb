# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211225.0.163715"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211225.0.163715/kopia-20211225.0.163715-macOS-x64.tar.gz"
    sha256 "c15ff92e078035ec31c9386458b70ad73736c68b37d7451fa2a152b31a669912"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211225.0.163715/kopia-20211225.0.163715-macOS-arm64.tar.gz"
    sha256 "ffc4c0bf8a7d0a76c7052185bc5a2febde2db9b979f265a8c5311932bb4b98d4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211225.0.163715/kopia-20211225.0.163715-linux-x64.tar.gz"
    sha256 "a03a74ac8e3e67c1a4377eb1b55d255b71c067d8b5a1d94da0ca9ad3fb53614f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211225.0.163715/kopia-20211225.0.163715-linux-arm.tar.gz"
    sha256 "d2aaec65848b6f9f8a6a46ebdeffc26836ac2ef999816609dcfd0f975eafab22"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211225.0.163715/kopia-20211225.0.163715-linux-arm64.tar.gz"
    sha256 "d5c161485869f802225c8f944e9c6a35244f9f51d4973efb9f7d2e84587c8e1b"
  end

  def install
    bin.install "kopia"
  end
end
