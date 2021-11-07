# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211106.0.164445"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.164445/kopia-20211106.0.164445-macOS-x64.tar.gz"
    sha256 "ff75bc6433db98da092b0b934d057207f81aec7ed724312a93b65889535433f6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.164445/kopia-20211106.0.164445-macOS-arm64.tar.gz"
    sha256 "a3994664db30ab6d571c4ee94aff26b1da7a649e82880f2611885b96d399eadd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.164445/kopia-20211106.0.164445-linux-x64.tar.gz"
    sha256 "a5d0687259c58bcbfa11c80236d933dad64c8a7aefa6b97976390740554126a1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.164445/kopia-20211106.0.164445-linux-arm.tar.gz"
    sha256 "b2048fc0bbecf638644fbc6e577a9a21750352365199f7f1d5375d742e3a2934"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.164445/kopia-20211106.0.164445-linux-arm64.tar.gz"
    sha256 "6b81da3b58d7dc1c8e66e5c19bf38a5829c789e031e371d1368ce6712c19c097"
  end

  def install
    bin.install "kopia"
  end
end
