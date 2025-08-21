# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250821.0.52924"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250821.0.52924/kopia-20250821.0.52924-macOS-x64.tar.gz"
    sha256 "fdae1d438cecc2c39f98ac4db6e68f58d5a8720a054c418317b2ff90351ea81f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250821.0.52924/kopia-20250821.0.52924-macOS-arm64.tar.gz"
    sha256 "f606c95a927576f2620429a99380b83e66843bde22a1cc8bcdcbcdd313b83334"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250821.0.52924/kopia-20250821.0.52924-linux-x64.tar.gz"
    sha256 "41e8350e6932010c85f9c3f9005c2a30fa86124d89c158a86dd6bd869c7aa8e1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250821.0.52924/kopia-20250821.0.52924-linux-arm.tar.gz"
    sha256 "f6221daf58a4b5b9ab13bcfcdc8022a86f17e0326eb7fb4b7317b89c7ea6f8e3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250821.0.52924/kopia-20250821.0.52924-linux-arm64.tar.gz"
    sha256 "6ae877c5e7340d81373f2c37645b95ed4214770839666b40301cef3058f83be4"
  end

  def install
    bin.install "kopia"
  end
end
