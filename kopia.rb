# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220502.0.215522"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220502.0.215522/kopia-20220502.0.215522-macOS-x64.tar.gz"
    sha256 "293f651381216520effc4dd3887a5ec87abc2c0c4d5815426bf4422ed1115727"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220502.0.215522/kopia-20220502.0.215522-macOS-arm64.tar.gz"
    sha256 "d678bbbd3d838f61e7e4985d862092a9f699a3803abf77517f33079de9348987"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220502.0.215522/kopia-20220502.0.215522-linux-x64.tar.gz"
    sha256 "eec865468f760cbd33e8876675e4dfb6b4e6c7a07e7fa39b13e81738cc70c733"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220502.0.215522/kopia-20220502.0.215522-linux-arm.tar.gz"
    sha256 "4c0fe9601dae630a2dfb44c5248789c440d8825bf22f836d0840c955884ee55c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220502.0.215522/kopia-20220502.0.215522-linux-arm64.tar.gz"
    sha256 "c10e093a40ca414aadfdae6401b8f4326eb4d1cd92df8d85fedc96c8880162fb"
  end

  def install
    bin.install "kopia"
  end
end
