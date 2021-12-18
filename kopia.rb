# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211218.0.111727"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.111727/kopia-20211218.0.111727-macOS-x64.tar.gz"
    sha256 "3e54dd12e7b59e1fa9f16fbb1bb1ac4ba17b339d712c5500a9a7f7c16779f315"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.111727/kopia-20211218.0.111727-macOS-arm64.tar.gz"
    sha256 "dbdd8e007fcc0d622da583c08e91488d7f72feb74670071d2ed347947027072d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.111727/kopia-20211218.0.111727-linux-x64.tar.gz"
    sha256 "1a92ee63ce0b6a288c580169bbda1fa2c996680502017caa7deac410a41d8536"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.111727/kopia-20211218.0.111727-linux-arm.tar.gz"
    sha256 "1ef07027d279372a96d49eb4e54afd9c04ab7b2cad8c251acc793573196dd109"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.111727/kopia-20211218.0.111727-linux-arm64.tar.gz"
    sha256 "4e58b4375d8d38bc89ab395b7003cc2ad533a57eb061648e13a40bd3f24ee307"
  end

  def install
    bin.install "kopia"
  end
end
