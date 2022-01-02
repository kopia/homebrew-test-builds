# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220101.0.170138"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.170138/kopia-20220101.0.170138-macOS-x64.tar.gz"
    sha256 "e52c0eb36f29090f2a493da33331f826c4dd2c739a23c60fd7b961a72530c031"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.170138/kopia-20220101.0.170138-macOS-arm64.tar.gz"
    sha256 "a17a8ff6617c115cb58a1a86cf7a6ab744bef543279d8700efc8b7131bc373d8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.170138/kopia-20220101.0.170138-linux-x64.tar.gz"
    sha256 "5bfc5b95a7ece14cd1baf7146fe2605c25c29cb0cfa1524129a01a8c41cdac31"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.170138/kopia-20220101.0.170138-linux-arm.tar.gz"
    sha256 "4113480fcbc784e6e5a86d7e453b20fc5de1c721692ab8ca0b5a2d7ef09e4ac1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.170138/kopia-20220101.0.170138-linux-arm64.tar.gz"
    sha256 "bfad7bc5dff1dbd9888b9daa9f2545e87ed5821668edfc4b54ac19034c485041"
  end

  def install
    bin.install "kopia"
  end
end
