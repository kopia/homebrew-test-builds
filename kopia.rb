# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250524.0.141036"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.141036/kopia-20250524.0.141036-macOS-x64.tar.gz"
    sha256 "309ce6a11cf7a97ddf465abb98186b23ce0cd343096ace5d7956880e83ae4618"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.141036/kopia-20250524.0.141036-macOS-arm64.tar.gz"
    sha256 "3d78b8070aba30a7df20746256518a78337a5602886c221fd68abe7fafd395a5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.141036/kopia-20250524.0.141036-linux-x64.tar.gz"
    sha256 "ee685d5602dd6f11fd262f9950c0d777b7193303eaf5f3146d058390f114d55c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.141036/kopia-20250524.0.141036-linux-arm.tar.gz"
    sha256 "5a7e6b98cbefd1ac4e38ba33b837a07bfc1f22ad5a3a219fa223a45a48d74976"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.141036/kopia-20250524.0.141036-linux-arm64.tar.gz"
    sha256 "132252da0b4224c124a44c7223eee3ce09cdd8805165dc94de172702d5cec669"
  end

  def install
    bin.install "kopia"
  end
end
