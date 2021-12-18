# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211218.0.144931"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.144931/kopia-20211218.0.144931-macOS-x64.tar.gz"
    sha256 "e280ac9454804f043136546ffd0c42025ae02997867795b409e0aa670d4f305e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.144931/kopia-20211218.0.144931-macOS-arm64.tar.gz"
    sha256 "e3153773c854db72b24d9c278241fbeb954ab4b960771e7f8dbecbf738c5f73c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.144931/kopia-20211218.0.144931-linux-x64.tar.gz"
    sha256 "eef17e207e81a1092bfd817e5ef58eda6b593db6cf65e75cdcd602b1cec37ba2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.144931/kopia-20211218.0.144931-linux-arm.tar.gz"
    sha256 "9058435afd563de0f8ce5d08a6de73ac58214c1949c12f198be1912f02110059"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.144931/kopia-20211218.0.144931-linux-arm64.tar.gz"
    sha256 "52d60018288e1e31ed9e5b79cf663fef46156e7d5afa887ae817f620a8a7f9da"
  end

  def install
    bin.install "kopia"
  end
end
