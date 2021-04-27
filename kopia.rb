# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210427.0.105355"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.105355/kopia-20210427.0.105355-macOS-x64.tar.gz"
    sha256 "a0a32e560456c32e9d993c8db1e1eaee516094fb5ea7d25eb4a9158789a95dc6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.105355/kopia-20210427.0.105355-macOS-arm64.tar.gz"
    sha256 "41df222a065a2af4b4bcd637d95c4f6b4aaa98f82ec91af425fe9eb19e31b58b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.105355/kopia-20210427.0.105355-linux-x64.tar.gz"
    sha256 "b1f48b06a319f7d9b933f3bb0533908ae9453cece720db382ecc61be553b8805"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.105355/kopia-20210427.0.105355-linux-arm.tar.gz"
    sha256 "9a43c3f9b079a6b7b036f8796e71bf9c90682505d9e9d4aad2dd9197fb731704"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.105355/kopia-20210427.0.105355-linux-arm64.tar.gz"
    sha256 "a74a25a5a3ecd149880ce14cb91038f4a8df09b8d4d297f34771131e0d79e4da"
  end

  def install
    bin.install "kopia"
  end
end
