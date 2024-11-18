# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241118.0.14713"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241118.0.14713/kopia-20241118.0.14713-macOS-x64.tar.gz"
    sha256 "e74441debf8e21757ecb32672b40eba7fcbce74529b69551b1c2f327431b97cc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241118.0.14713/kopia-20241118.0.14713-macOS-arm64.tar.gz"
    sha256 "b117b4fc12b7650e39ddc4a073231e0a3545dbdd06996a1e398930ca9bcdbe53"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241118.0.14713/kopia-20241118.0.14713-linux-x64.tar.gz"
    sha256 "7a735fe238a589cc1cdb086a0b942ba6764714dbf24cc3fcf1684b4df881ebbc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241118.0.14713/kopia-20241118.0.14713-linux-arm.tar.gz"
    sha256 "88ac7ae879fa4423fb3505a028d33d71b9b4bb3ec2bbd0199fb0e7fe31bddc7e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241118.0.14713/kopia-20241118.0.14713-linux-arm64.tar.gz"
    sha256 "f862c8c223773022c4e0f3d126ec5400b21efc326f92c4d28289d432f13ed9bf"
  end

  def install
    bin.install "kopia"
  end
end
