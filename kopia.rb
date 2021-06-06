# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210605.0.201923"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.201923/kopia-20210605.0.201923-macOS-x64.tar.gz"
    sha256 "4d7fccb9c64349ebde12112927924b9d7f1162e0fbaa08d77259800a1c12dd67"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.201923/kopia-20210605.0.201923-macOS-arm64.tar.gz"
    sha256 "a8c424238e7642cac696e7380b126462cfd580d6ac1d87a17d242f277ab3b26d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.201923/kopia-20210605.0.201923-linux-x64.tar.gz"
    sha256 "52040fbe29ab272f813d9dc18cac2855d737b7ef6de4dd6f8956f3c78e19eec5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.201923/kopia-20210605.0.201923-linux-arm.tar.gz"
    sha256 "61ff23e6837cedea265340d6e4258b5c7b5a4a1bd5736947763f66d4c72b6772"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.201923/kopia-20210605.0.201923-linux-arm64.tar.gz"
    sha256 "f6e090d154a46540334c98476e347599c5e2251059571001178a00c4e4124911"
  end

  def install
    bin.install "kopia"
  end
end
