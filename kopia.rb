# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230314.0.82917"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230314.0.82917/kopia-20230314.0.82917-macOS-x64.tar.gz"
    sha256 "f3af7bc3f8894ee768dc3f7af48a912cd07e4bc2f4a7631271d6543e319fff89"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230314.0.82917/kopia-20230314.0.82917-macOS-arm64.tar.gz"
    sha256 "e714f32d130cad40b05ed574a932d987507bf470e9aae4fe03454d4960a7c2c4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230314.0.82917/kopia-20230314.0.82917-linux-x64.tar.gz"
    sha256 "3f5397866b408a02e42c4e978c12f0194620f30c34bab5bc17768ef0a45931c2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230314.0.82917/kopia-20230314.0.82917-linux-arm.tar.gz"
    sha256 "ccc7a1c5aff488ee75e6c1d9ead07d9271d1d477ad88475027f2e5eb73207491"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230314.0.82917/kopia-20230314.0.82917-linux-arm64.tar.gz"
    sha256 "74d06cc8ce62107041b00545a3a7a1ea5e282aaf90b0bda65c26ebd6241d7c99"
  end

  def install
    bin.install "kopia"
  end
end
