# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260211.0.64946"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260211.0.64946/kopia-20260211.0.64946-macOS-x64.tar.gz"
    sha256 "7341ddd3f0ed22965207c45f6f2d2150072c6f4170dcd26605e0afde3458ce0d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260211.0.64946/kopia-20260211.0.64946-macOS-arm64.tar.gz"
    sha256 "41c20e6c1307006d8ce1e1863990a2fb34306290a46f5e64b2aa17afa9ab300b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260211.0.64946/kopia-20260211.0.64946-linux-x64.tar.gz"
    sha256 "a218068ae55799841e268df5df6b9542e1ed7b738f3f596d712028948aacef7c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260211.0.64946/kopia-20260211.0.64946-linux-arm.tar.gz"
    sha256 "5bc42b7dc33989259b7b243a4022ffbb25ff8b2d809dfb5557e1143f74e0ff3b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260211.0.64946/kopia-20260211.0.64946-linux-arm64.tar.gz"
    sha256 "0a94ff0071f067a5e1c3d6a055872cc95e240463282265594e9aa3c0f06336b5"
  end

  def install
    bin.install "kopia"
  end
end
