# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210611.0.190533"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.190533/kopia-20210611.0.190533-macOS-x64.tar.gz"
    sha256 "3cc411b8638b84be0078223ce43ef780f1581923068744d8a669ca129463abf6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.190533/kopia-20210611.0.190533-macOS-arm64.tar.gz"
    sha256 "a49a3a7bd9ff264285bf6a1b3ab642a684a088b74eb34b8d7f933427bf02bf34"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.190533/kopia-20210611.0.190533-linux-x64.tar.gz"
    sha256 "8af93ab2a37cecc738f9d9e12bf28b0a986fa7003b18d43e998d1ce29c388f00"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.190533/kopia-20210611.0.190533-linux-arm.tar.gz"
    sha256 "13ced9038363ad99b4b4f08187f3fa2f8c0e7b1adc236e5b37f2f0415bd807ed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.190533/kopia-20210611.0.190533-linux-arm64.tar.gz"
    sha256 "f3f639898289dd6e23bf2b2215f6184a5b9da0eea1a5b249da86f141b018a16d"
  end

  def install
    bin.install "kopia"
  end
end
