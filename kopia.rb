# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230406.0.175057"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230406.0.175057/kopia-20230406.0.175057-macOS-x64.tar.gz"
    sha256 "10ca48b2a1506723fc1f5f53e7d3fe0bb148a9d7636fc3d2320ede7c4d4d1ff5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230406.0.175057/kopia-20230406.0.175057-macOS-arm64.tar.gz"
    sha256 "0aad11b0d03d52bb6757aa753772831103f26bbc0047565d90c6cdf8a365d606"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230406.0.175057/kopia-20230406.0.175057-linux-x64.tar.gz"
    sha256 "166e6fd64f46cdca0372b1b4cf7ddd6cc09f5836afba37d220f296ae72ba376d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230406.0.175057/kopia-20230406.0.175057-linux-arm.tar.gz"
    sha256 "668c28b515197efd9bb7ca3d0c1f833796fb43ce49da3a451e81dbc683786ec3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230406.0.175057/kopia-20230406.0.175057-linux-arm64.tar.gz"
    sha256 "c1c05c1c67f7fda3cc7932de10b1191d506aa9e557d088583f5bdb11f333c1da"
  end

  def install
    bin.install "kopia"
  end
end
