# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260903.0.200116"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260903.0.200116/kopia-20260903.0.200116-macOS-x64.tar.gz"
    sha256 "8d6d41d644595d9446c76889810d2e06931b61f53bac4fe244d1c11eb99df60e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260903.0.200116/kopia-20260903.0.200116-macOS-arm64.tar.gz"
    sha256 "f276389b511e736a5979af07240c8577039a10f4a859bdbfdfde6b1899d2f819"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260903.0.200116/kopia-20260903.0.200116-linux-x64.tar.gz"
    sha256 "ee730080830cdb3ef16b75f0482baff1cca0682dfa9a9e8d8ff76bb460123eef"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260903.0.200116/kopia-20260903.0.200116-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260903.0.200116/kopia-20260903.0.200116-linux-arm64.tar.gz"
    sha256 "2681c707d0fad4cdd6ccfc905965c4b86f347fad7969665f0a625befb3f5ed48"
  end

  def install
    bin.install "kopia"
  end
end
