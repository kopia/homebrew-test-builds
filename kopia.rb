# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210807.0.161029"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.161029/kopia-20210807.0.161029-macOS-x64.tar.gz"
    sha256 "89f7c662d71e28e78e78801451a5303402ae636b1417b28dd47af65854b5b9c1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.161029/kopia-20210807.0.161029-macOS-arm64.tar.gz"
    sha256 "9ae2edd20d98e4a3a4843d31213333af38eadac8a19f56361aca6f660f16aab9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.161029/kopia-20210807.0.161029-linux-x64.tar.gz"
    sha256 "a4f005b00df46ae3c9cb9ff1dfdb853585e96a0036bb3b51ee27420f0ba1ec5d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.161029/kopia-20210807.0.161029-linux-arm.tar.gz"
    sha256 "13dc6d673b4aff16187585acc36f54295e4ce1527a6a1dd9ce08d4b39e3ab04d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.161029/kopia-20210807.0.161029-linux-arm64.tar.gz"
    sha256 "236d043e53c3d694c73f4b82e43b1debb736605f531b5092c2bbbb08687d7e61"
  end

  def install
    bin.install "kopia"
  end
end
