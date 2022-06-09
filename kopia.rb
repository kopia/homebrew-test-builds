# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220609.0.125116"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220609.0.125116/kopia-20220609.0.125116-macOS-x64.tar.gz"
    sha256 "afdc31e9b240bd6d59491e450f04269c983c2f77984cebfc36e4d76528294c49"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220609.0.125116/kopia-20220609.0.125116-macOS-arm64.tar.gz"
    sha256 "5cf71364d1f3d7a5b0e524672b7903ca075a36dbeca1eb743b5be66b2c020964"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220609.0.125116/kopia-20220609.0.125116-linux-x64.tar.gz"
    sha256 "aadc204df03d0a9b9fb731590d333243ccfbc1871db6a1c245f66270c49a9aaf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220609.0.125116/kopia-20220609.0.125116-linux-arm.tar.gz"
    sha256 "8966d76b47b8ee133794c21aa0ea8650b91cf630f7c876274e92c62e1a32e9a4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220609.0.125116/kopia-20220609.0.125116-linux-arm64.tar.gz"
    sha256 "08d95cee496f4c7608024a63051d616b188e04e836f69eca1f6c9b563549e98e"
  end

  def install
    bin.install "kopia"
  end
end
