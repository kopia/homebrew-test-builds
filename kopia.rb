# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260206.0.175328"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260206.0.175328/kopia-20260206.0.175328-macOS-x64.tar.gz"
    sha256 "1bdfef9086ad18505c3b1fb4890da2cc3b96d1f431bd04e6484b213bbb704df0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260206.0.175328/kopia-20260206.0.175328-macOS-arm64.tar.gz"
    sha256 "085d8c4e355c89b291f79f555f875a254f06a1b032b48fae9e00e4c92f0c87ab"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260206.0.175328/kopia-20260206.0.175328-linux-x64.tar.gz"
    sha256 "ba2b0ed46f03199d101f6e8a2338b892dabf7eedf312a067fc6111620a4adfde"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260206.0.175328/kopia-20260206.0.175328-linux-arm.tar.gz"
    sha256 "43002f92d53b83d5a72eae68ea6a350f85f7ebcaf969c4e1897e275353baa64e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260206.0.175328/kopia-20260206.0.175328-linux-arm64.tar.gz"
    sha256 "15f65913d49c2b4d1ddeab644510fdffc9131372ce56df0eb25a7947acea839d"
  end

  def install
    bin.install "kopia"
  end
end
