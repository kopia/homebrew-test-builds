# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220526.0.64400"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.64400/kopia-20220526.0.64400-macOS-x64.tar.gz"
    sha256 "d8da7e64342bc280ab2bad834ab752fbdc1e1cf9abdb501e3afc54bd545ce67e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.64400/kopia-20220526.0.64400-macOS-arm64.tar.gz"
    sha256 "ab14e2898ea0f45605cb8ee6f178a8441108a293f5441a959c9b0e07a4b87999"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.64400/kopia-20220526.0.64400-linux-x64.tar.gz"
    sha256 "816d3ba236f69251976a2bb066d7df63dbdcad3f6cbe1c58e03a4e8f836bf094"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.64400/kopia-20220526.0.64400-linux-arm.tar.gz"
    sha256 "cd67b504c39082f71f4d940070f18e9967370b8adb8c7c8092501d729c2a27e9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.64400/kopia-20220526.0.64400-linux-arm64.tar.gz"
    sha256 "745ad19527a4da8101a2a856dd8fa4eea3c4de116b17cb35f681df9254a03c52"
  end

  def install
    bin.install "kopia"
  end
end
