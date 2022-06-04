# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220603.0.180621"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.180621/kopia-20220603.0.180621-macOS-x64.tar.gz"
    sha256 "a90e97eec2ff2ce2954fa95acab631fb01bf341cf87e3d846d5e10068b76eaa5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.180621/kopia-20220603.0.180621-macOS-arm64.tar.gz"
    sha256 "f008f7d11d447b6c9120e53237488982b446bbd633f9bad578db4aec53f59283"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.180621/kopia-20220603.0.180621-linux-x64.tar.gz"
    sha256 "d2e5b4263ab147bf98594a785e71618af635e221b67a932b6cb0203c0c5b1c04"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.180621/kopia-20220603.0.180621-linux-arm.tar.gz"
    sha256 "a40ffb20805569f16383bf73c65737643799dcfbe6e8a0d4bb1c7e1ef9af64f5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.180621/kopia-20220603.0.180621-linux-arm64.tar.gz"
    sha256 "cc790e226494f448e0f2e818a25c035ac9107bc357a052f4ef833b224f608542"
  end

  def install
    bin.install "kopia"
  end
end
