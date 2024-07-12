# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240711.0.185716"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.185716/kopia-20240711.0.185716-macOS-x64.tar.gz"
    sha256 "34a2603a00df242376a5d1024f2338b83e91f7c7710b285d288f3fc34ea95adc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.185716/kopia-20240711.0.185716-macOS-arm64.tar.gz"
    sha256 "209ea8f08d7c1674efa05437cccee7c24fd80cfbed0cf15034a08c263909f994"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.185716/kopia-20240711.0.185716-linux-x64.tar.gz"
    sha256 "50d54807b4cbb4c0bf0eabf36e5fb2071088e9b360e418a0491d3cc47f2f2713"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.185716/kopia-20240711.0.185716-linux-arm.tar.gz"
    sha256 "8cda8e0ece76aa751760ecfad973d1eec28b404f195fc24b4b2c1edd9534f29f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.185716/kopia-20240711.0.185716-linux-arm64.tar.gz"
    sha256 "60f722abebc15a30f78d161b5fc9fb843d0f2d01a64b04e9c663e2b0c982061e"
  end

  def install
    bin.install "kopia"
  end
end
