# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260105.0.171522"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260105.0.171522/kopia-20260105.0.171522-macOS-x64.tar.gz"
    sha256 "34bf589fed53adc097dbc8e93f5e3633ecf4b828edc9df012468a7f45b65c9e7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260105.0.171522/kopia-20260105.0.171522-macOS-arm64.tar.gz"
    sha256 "af31f208db1986cb35c3e8d8f98eaf08d258215a4699abad9dd782ac03538962"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260105.0.171522/kopia-20260105.0.171522-linux-x64.tar.gz"
    sha256 "1dc9744be3a98f88e1100a7af88a8a456d13d912b5eeb71a4dbff3deed324c37"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260105.0.171522/kopia-20260105.0.171522-linux-arm.tar.gz"
    sha256 "49b85948a17d30a6c4acc94cebe1909f9ad74368017b7e4d3fa6b0822e3502b8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260105.0.171522/kopia-20260105.0.171522-linux-arm64.tar.gz"
    sha256 "246c7d8159aa14d66b937909ec8fa2b8408687e56719a0b07afa35f156526faa"
  end

  def install
    bin.install "kopia"
  end
end
