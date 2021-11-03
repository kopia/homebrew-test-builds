# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.75757"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75757/kopia-20211103.0.75757-macOS-x64.tar.gz"
    sha256 "d261bede8a3e198ccb31dc70fd5b3b20572804cbeaf4e9cc1a8d2918d168a62d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75757/kopia-20211103.0.75757-macOS-arm64.tar.gz"
    sha256 "0f32761008a22d021c26dcc3d72f4bfa2b6627e34b851eac6eccb6080d2fac50"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75757/kopia-20211103.0.75757-linux-x64.tar.gz"
    sha256 "0641ef2940a57fe503504dde0284b7a6eb19e9fe97a7d4bea73fe6fa8a82912f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75757/kopia-20211103.0.75757-linux-arm.tar.gz"
    sha256 "00e9a0db1091e16e0186de6ef46a9f96dfe52a80f34426afa90a26f34a2fda0d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75757/kopia-20211103.0.75757-linux-arm64.tar.gz"
    sha256 "fae9134fb37dc1e6960c8d84ea37dc517cf62aefbb6ffb25d75bb1c1095d6aa1"
  end

  def install
    bin.install "kopia"
  end
end
