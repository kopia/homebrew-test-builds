# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251125.0.31833"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.31833/kopia-20251125.0.31833-macOS-x64.tar.gz"
    sha256 "f8b428d5f073918d8d6da0519aad2f8b7dc8e49f21aedc192417b02a2e5b86b3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.31833/kopia-20251125.0.31833-macOS-arm64.tar.gz"
    sha256 "c631974b25b1dc9299ab9e970fcff0c6214068a07a106940cd052dcc23fe99a2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.31833/kopia-20251125.0.31833-linux-x64.tar.gz"
    sha256 "8d2a1922d1e1362708acdda92e9f8ebe8d800e387985ffc9fe61f4ae403eb30b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.31833/kopia-20251125.0.31833-linux-arm.tar.gz"
    sha256 "a643a64caa5ff10795150a409774a442de86e6fdd17222ca5e4f424684510298"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.31833/kopia-20251125.0.31833-linux-arm64.tar.gz"
    sha256 "fd1e05eaf6d1330e5ebc7aa8354d499d3016433556b4c63415990bb0fbf0dccf"
  end

  def install
    bin.install "kopia"
  end
end
