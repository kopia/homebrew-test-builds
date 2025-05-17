# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250517.0.224137"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.224137/kopia-20250517.0.224137-macOS-x64.tar.gz"
    sha256 "fa2a3adc933191876f69c6716acb8c2b994a67df484c6e7aeef999e94563a07c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.224137/kopia-20250517.0.224137-macOS-arm64.tar.gz"
    sha256 "35662281c9237412f79284528cbd51a4a4f5a0a714e7d1333cd2c390af38de17"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.224137/kopia-20250517.0.224137-linux-x64.tar.gz"
    sha256 "b7db9f5041423fdf59bfc067147891df1283396622cd81a7b994fd9714f439bb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.224137/kopia-20250517.0.224137-linux-arm.tar.gz"
    sha256 "bf221a032352f4a046f72aacc9c122aac441c1068e9ca0631be04977266ebfe4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.224137/kopia-20250517.0.224137-linux-arm64.tar.gz"
    sha256 "f111fc949a6b2293d30f25e62157b2c3293a3262765b74d306b264eeedcc88ff"
  end

  def install
    bin.install "kopia"
  end
end
