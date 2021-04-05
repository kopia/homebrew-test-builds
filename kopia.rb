# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210404.0.120527"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210404.0.120527/kopia-20210404.0.120527-macOS-x64.tar.gz"
    sha256 "b53db76510cbbdc811817643dd599d5a82242db415df1018cdee0bcd30a3dfaf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210404.0.120527/kopia-20210404.0.120527-macOS-arm64.tar.gz"
    sha256 "3bb9c090e7d2d683147c27534cc0ab63be1290760ede7ffd8e644b8419ff7948"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210404.0.120527/kopia-20210404.0.120527-linux-x64.tar.gz"
    sha256 "6ada4dedde80485ddaeecf021e69f3f91a8708ba1fba645764953c8ab92b14c3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210404.0.120527/kopia-20210404.0.120527-linux-arm.tar.gz"
    sha256 "8484e293caf92e0c30f50f9fd260e581801b0dab3a01650d9d21e937599b439e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210404.0.120527/kopia-20210404.0.120527-linux-arm64.tar.gz"
    sha256 "e124e26546d6d73629cf18e9ab260ae1eb5f83a3c86859d0946c2ec6f0dc96af"
  end

  def install
    bin.install "kopia"
  end
end
