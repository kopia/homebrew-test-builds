# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211001.0.225737"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225737/kopia-20211001.0.225737-macOS-x64.tar.gz"
    sha256 "97f7d04f8b0b65e61da10e5e3f042535778402c84396dc2808465ce5038c22e7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225737/kopia-20211001.0.225737-macOS-arm64.tar.gz"
    sha256 "6bc8644166734e99ba7d6ede813c7e0c3634e3417690fdfc7ced978417638940"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225737/kopia-20211001.0.225737-linux-x64.tar.gz"
    sha256 "8175397c004d9c57a02b0f2477e4370157cbf7e17c791af126044f3f12fc200f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225737/kopia-20211001.0.225737-linux-arm.tar.gz"
    sha256 "1f1270f24471d16cea708abcd7ea87736cf496f4fe38acf6ebdc9fb51d9f5480"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225737/kopia-20211001.0.225737-linux-arm64.tar.gz"
    sha256 "1bab43c05c5e1f2cc52630b8ea2c9cf10c53d1a5b91360bd004b7d7a12dd17b5"
  end

  def install
    bin.install "kopia"
  end
end
