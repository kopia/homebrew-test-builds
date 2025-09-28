# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250928.0.1113"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250928.0.1113/kopia-20250928.0.1113-macOS-x64.tar.gz"
    sha256 "d77fac226d4b391acf6933e984e3284249b62b920e56749ed6e34d92712556be"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250928.0.1113/kopia-20250928.0.1113-macOS-arm64.tar.gz"
    sha256 "a6d14859c2b24ea3326da3acbb5932579a50a401ba558b4fcf2f5035e9fc2c22"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250928.0.1113/kopia-20250928.0.1113-linux-x64.tar.gz"
    sha256 "b38bc02fe74f9852fbee185deaee8ea7469bcd5de0209c76bb6083d94fe1ee5e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250928.0.1113/kopia-20250928.0.1113-linux-arm.tar.gz"
    sha256 "b3d72dd22f173694bf7a09c40e00c642751f99e23465676edac9ab9d63f5a402"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250928.0.1113/kopia-20250928.0.1113-linux-arm64.tar.gz"
    sha256 "584d5f9091cf31287b73b3b1682de8ea31460ed2ca561c25ce49df36a79b04f6"
  end

  def install
    bin.install "kopia"
  end
end
