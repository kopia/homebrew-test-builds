# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240824.0.44435"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240824.0.44435/kopia-20240824.0.44435-macOS-x64.tar.gz"
    sha256 "0cb1bb7fef6735b5a34a3e07b709198ce8d301f6540692e008e532221468a954"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240824.0.44435/kopia-20240824.0.44435-macOS-arm64.tar.gz"
    sha256 "a4a17ebd4e10f0a8989434e1cef9c7bae60c54b2066c18068ea19a84f8a8fe1d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240824.0.44435/kopia-20240824.0.44435-linux-x64.tar.gz"
    sha256 "7b169a6c127f3d4e0d8d2537b3de14b73fb7d8ad6d50d323a04662320a620656"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240824.0.44435/kopia-20240824.0.44435-linux-arm.tar.gz"
    sha256 "3264c4e48f1bbcf3c0e3dac32cf281d1dd41e17e4d66a3658d9e1e693b488822"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240824.0.44435/kopia-20240824.0.44435-linux-arm64.tar.gz"
    sha256 "72c312b1739e1bb4856c04954263c7d63c1de3c8e5bda70800c49894c6a8c829"
  end

  def install
    bin.install "kopia"
  end
end
