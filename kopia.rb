# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240426.0.144736"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240426.0.144736/kopia-20240426.0.144736-macOS-x64.tar.gz"
    sha256 "13ab687f35ae56c46172ab0d97cf54dad8a9efb8983b46e920f4f8a784eedca2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240426.0.144736/kopia-20240426.0.144736-macOS-arm64.tar.gz"
    sha256 "891f7cc3ef0a893f0800c6b799fdab8c8d14a13e47cffa573b194e7276ec56c1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240426.0.144736/kopia-20240426.0.144736-linux-x64.tar.gz"
    sha256 "42a6088ca5dc4970b9140c9caa2e78edd86cca439aa006fcd352c22dd06c8454"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240426.0.144736/kopia-20240426.0.144736-linux-arm.tar.gz"
    sha256 "72be2670ec735e2c79146226d3fcb0948493670786d6b9f4b0761311996709a8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240426.0.144736/kopia-20240426.0.144736-linux-arm64.tar.gz"
    sha256 "ac4f85bef7ddbe7ca873b27963c35777beccfa12db606bb36799c4e71439a619"
  end

  def install
    bin.install "kopia"
  end
end
