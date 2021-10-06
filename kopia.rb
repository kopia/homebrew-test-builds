# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211005.0.212308"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211005.0.212308/kopia-20211005.0.212308-macOS-x64.tar.gz"
    sha256 "09994469c4f09cd70ac21dd9ea5ee2bbfc19f58c38c3260b479e3f4973ae8765"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211005.0.212308/kopia-20211005.0.212308-macOS-arm64.tar.gz"
    sha256 "ef9bc03d22c2f94e5d549bc1eb74098f30a30ac3c41f45d2f2082b99e2436eb6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211005.0.212308/kopia-20211005.0.212308-linux-x64.tar.gz"
    sha256 "ec11744e3ff7cabc4e310653eeaef4dc5e56933e14210b37400aba7f70dbb836"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211005.0.212308/kopia-20211005.0.212308-linux-arm.tar.gz"
    sha256 "27401d75c7de3b99d45a4b9c4912f018c84f1ffb55e4c4dc5b27f87e325834fe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211005.0.212308/kopia-20211005.0.212308-linux-arm64.tar.gz"
    sha256 "9e447347b42225192cccf2a8522fe6e64763afdfb10691957ce4ab9188021943"
  end

  def install
    bin.install "kopia"
  end
end
