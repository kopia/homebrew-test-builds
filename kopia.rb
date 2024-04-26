# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240425.0.174512"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240425.0.174512/kopia-20240425.0.174512-macOS-x64.tar.gz"
    sha256 "64334fbffb79536563391c1a000b798eecc4ed9a254e21dfc91de88cb7b2a240"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240425.0.174512/kopia-20240425.0.174512-macOS-arm64.tar.gz"
    sha256 "a4f15a4bffb6335f55cda8f6e2d3b35282eeb468923d1b62cca19c58b0a35ba5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240425.0.174512/kopia-20240425.0.174512-linux-x64.tar.gz"
    sha256 "eb5bfd0e8516e5eeb5a1c495093ae9da490ec2aeb4cd6df5264cfde460d2c82c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240425.0.174512/kopia-20240425.0.174512-linux-arm.tar.gz"
    sha256 "a18a0c061e4da40a817dde4d9484a39ab309434357ffa8a293e9584aee93ac89"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240425.0.174512/kopia-20240425.0.174512-linux-arm64.tar.gz"
    sha256 "6034c53391ab95aac26fd1e715841b427b01778d8069b6f9ef0d27443c672895"
  end

  def install
    bin.install "kopia"
  end
end
