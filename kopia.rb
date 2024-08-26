# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240826.0.164257"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240826.0.164257/kopia-20240826.0.164257-macOS-x64.tar.gz"
    sha256 "d969103269a98f639cdc1125187d3b4d555e10c848a3d32ab553eabb99bb4e71"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240826.0.164257/kopia-20240826.0.164257-macOS-arm64.tar.gz"
    sha256 "86a6f932f3c6c6a86f9dc68d03d0db681ad63c3bf1529b61c17227854aed50a6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240826.0.164257/kopia-20240826.0.164257-linux-x64.tar.gz"
    sha256 "5e521cd98d1231f3f65b983f4a72d9f8952bfaa771ff43b9ce45d357fd0be8cb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240826.0.164257/kopia-20240826.0.164257-linux-arm.tar.gz"
    sha256 "341047d15bcef0339809f19ad660ec4cea4282c1f347716557a337597fe05e7b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240826.0.164257/kopia-20240826.0.164257-linux-arm64.tar.gz"
    sha256 "717cd69f8ef231bcd97eb409ba015f57805048036d4fc6adca1f34085349c373"
  end

  def install
    bin.install "kopia"
  end
end
