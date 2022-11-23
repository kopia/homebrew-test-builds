# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221122.0.182358"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221122.0.182358/kopia-20221122.0.182358-macOS-x64.tar.gz"
    sha256 "c7baf55546c4af69e40b6ffc73269b8b6140fe7f5f393c6e50fbee76647a3f12"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221122.0.182358/kopia-20221122.0.182358-macOS-arm64.tar.gz"
    sha256 "4c2c7d4031fa794f7599089f3b2ee91911e7d7c37cac51f5274d1b93c0760ffe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221122.0.182358/kopia-20221122.0.182358-linux-x64.tar.gz"
    sha256 "1b7380236828142c05692cd83dc79897cd01d3b5551bbf9e7226b6eb237e5105"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221122.0.182358/kopia-20221122.0.182358-linux-arm.tar.gz"
    sha256 "ccb21a53664bc435c4456c78e83ce66c8e51fdfad1e733c422c995445463f49b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221122.0.182358/kopia-20221122.0.182358-linux-arm64.tar.gz"
    sha256 "70aeece429b39ff8a5d1741edd2875ad6b8c4583d88d3a834122ac9a3af7a382"
  end

  def install
    bin.install "kopia"
  end
end
