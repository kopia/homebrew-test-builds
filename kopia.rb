# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.95825"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.95825/kopia-20210717.0.95825-macOS-x64.tar.gz"
    sha256 "2e83141542cdbee29dd7446064745a47b31f30aee4cdacb2443ccd66ebd9c4c9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.95825/kopia-20210717.0.95825-macOS-arm64.tar.gz"
    sha256 "ee3f4d5952a054ef22441337f95e4cc49fc9f2617ecb188b27929abfc85cae9c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.95825/kopia-20210717.0.95825-linux-x64.tar.gz"
    sha256 "a0d6ff8f9190a5e52d4ec12be14e66961738ee9d4be0a66a68d6fde12cd02295"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.95825/kopia-20210717.0.95825-linux-arm.tar.gz"
    sha256 "e6c85a0209d966865e916734e47a88247fc9516def3ec8a01cefd415e06d423f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.95825/kopia-20210717.0.95825-linux-arm64.tar.gz"
    sha256 "6405de27c1b80de464b10c4c691420354ea5c64c1137561a4e9320806ccdae67"
  end

  def install
    bin.install "kopia"
  end
end
