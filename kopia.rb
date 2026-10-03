# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261003.0.2206"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.2206/kopia-20261003.0.2206-macOS-x64.tar.gz"
    sha256 "0a6ac6a5930757366dd2df45964cec7e10d6eff94b09205d36a42f9ad64c68df"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.2206/kopia-20261003.0.2206-macOS-arm64.tar.gz"
    sha256 "b99f704d8a9dc1c6d2f65adde69170504a2c09d804ef99ab2108d3295e526855"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.2206/kopia-20261003.0.2206-linux-x64.tar.gz"
    sha256 "ee79aa3ab72c7cb4a31e394844f44f65509947360f588db1bfd189d9a1ea4fdc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.2206/kopia-20261003.0.2206-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.2206/kopia-20261003.0.2206-linux-arm64.tar.gz"
    sha256 "803d644bc0f3665e79393544ed157a40d97d91f68752ae8535aafbf971bd316e"
  end

  def install
    bin.install "kopia"
  end
end
