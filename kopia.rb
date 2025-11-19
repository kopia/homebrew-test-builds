# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251119.0.64440"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.64440/kopia-20251119.0.64440-macOS-x64.tar.gz"
    sha256 "d377e5c9e1cdafa4c967084083b0243dd629cb4cbce87d378ace361ad5bb9211"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.64440/kopia-20251119.0.64440-macOS-arm64.tar.gz"
    sha256 "5378f329a62d7b5361453838d15ce0218dce510cec3e275affab0a71a522a679"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.64440/kopia-20251119.0.64440-linux-x64.tar.gz"
    sha256 "abbed98df60d1a58e71763c0b5edaada5f1124aceaf3bcc9aeeaece85276462b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.64440/kopia-20251119.0.64440-linux-arm.tar.gz"
    sha256 "dee4fdfc007de1748c6ae556d84054922b1d1fdae4aa75394c18f73dd5fc1653"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.64440/kopia-20251119.0.64440-linux-arm64.tar.gz"
    sha256 "18be52ab463ad1f75c7faea7e0e7b6f881e4b927780f7751f6778abff2bf6cac"
  end

  def install
    bin.install "kopia"
  end
end
