# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261005.0.220149"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261005.0.220149/kopia-20261005.0.220149-macOS-x64.tar.gz"
    sha256 "a62d2c153d118230f41e8fd5c4139c4c1548daf4d23e4cd35d27d7a318bddfd7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261005.0.220149/kopia-20261005.0.220149-macOS-arm64.tar.gz"
    sha256 "653c3edd986f1d17a23bfbb373e919b43125000f7e773656b6268b75466e8b89"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261005.0.220149/kopia-20261005.0.220149-linux-x64.tar.gz"
    sha256 "74f8e1b6fafcb135b9277cce4326e95798013c173d6195c0d3724133ea11f17f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261005.0.220149/kopia-20261005.0.220149-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261005.0.220149/kopia-20261005.0.220149-linux-arm64.tar.gz"
    sha256 "7d440470153f2c9639fae5a753d00fc7b092fc8a2f4ea31de7fe33689a90e5b7"
  end

  def install
    bin.install "kopia"
  end
end
