# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250602.0.72419"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.72419/kopia-20250602.0.72419-macOS-x64.tar.gz"
    sha256 "6a4b35a2ef995a2c5cd82980c9e014bcfeeb6803c2b757b08399512dec1c1e4c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.72419/kopia-20250602.0.72419-macOS-arm64.tar.gz"
    sha256 "b4db53b8d26014da7872069061838d48bd75ef5648ae14ccf7013d7eeb08f6bc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.72419/kopia-20250602.0.72419-linux-x64.tar.gz"
    sha256 "5a042d6997134087a750722b5fd56e6c817fb9ebc496a62a4ff9a8ddbf5520e4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.72419/kopia-20250602.0.72419-linux-arm.tar.gz"
    sha256 "7036f7bb0b642bfacf44efe119b304be0b4ccc5940b5df74b16f69886525b0c3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.72419/kopia-20250602.0.72419-linux-arm64.tar.gz"
    sha256 "f4eab79ae4554919f45f60880f20eef17e2d6a7a2f7411b9963a9b357e152cd3"
  end

  def install
    bin.install "kopia"
  end
end
