# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250614.0.65637"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250614.0.65637/kopia-20250614.0.65637-macOS-x64.tar.gz"
    sha256 "7485ee625bac68731e2413e1799fe03d1cfe6681d0fffe8efda3c9cec2e3964c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250614.0.65637/kopia-20250614.0.65637-macOS-arm64.tar.gz"
    sha256 "a4f30a4e3dab935b5d87868da9d1fb8aedc90a590306d979f3cdf7902399256a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250614.0.65637/kopia-20250614.0.65637-linux-x64.tar.gz"
    sha256 "4cee45f32b72c05ff8e492c03d8bc6c138223baf2b62f66837f7e841c7679c88"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250614.0.65637/kopia-20250614.0.65637-linux-arm.tar.gz"
    sha256 "7fc106fe4a8d3d066102f333800a1c71e7a77849bd70d19871a6ac0fe2d82ae2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250614.0.65637/kopia-20250614.0.65637-linux-arm64.tar.gz"
    sha256 "f61ec849fb4d9f6ae1cf9949133eb4c2415f4aa0f7a359390244f8868e59a21c"
  end

  def install
    bin.install "kopia"
  end
end
