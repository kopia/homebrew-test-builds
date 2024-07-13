# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240713.0.23141"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240713.0.23141/kopia-20240713.0.23141-macOS-x64.tar.gz"
    sha256 "6c3ddda07273279fbe02c7fc9735881909fb40e3913fe96ff0dd4e603aa7c2db"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240713.0.23141/kopia-20240713.0.23141-macOS-arm64.tar.gz"
    sha256 "664ae3d3da0b6f91610035ef11080314a26e5af5980c8832c6654ac98043ad1c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240713.0.23141/kopia-20240713.0.23141-linux-x64.tar.gz"
    sha256 "c28b8461b8ff6201c5214f6581cb43aba5aa8db5732650de692e41f3de68dd03"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240713.0.23141/kopia-20240713.0.23141-linux-arm.tar.gz"
    sha256 "e7d93c1becc5a419ba40878f5163cb507d54bffd51dd9441c09dce30cee332b0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240713.0.23141/kopia-20240713.0.23141-linux-arm64.tar.gz"
    sha256 "49a72288cd3fc11bc9122d827f116ebbb68dcf5fdc6828bf9015a7a01b3208df"
  end

  def install
    bin.install "kopia"
  end
end
