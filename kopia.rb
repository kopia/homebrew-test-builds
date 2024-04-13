# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240412.0.184338"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240412.0.184338/kopia-20240412.0.184338-macOS-x64.tar.gz"
    sha256 "3ba82ce757722f678ef67183a56c7130c7ce2b845f304f91f041d327f58b3dfd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240412.0.184338/kopia-20240412.0.184338-macOS-arm64.tar.gz"
    sha256 "b4fc516f5b6579fd0aa50d1d361c773fb18055dbc9fd7014bfb97f74ec880a86"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240412.0.184338/kopia-20240412.0.184338-linux-x64.tar.gz"
    sha256 "d08300cd639707730bd365cb9a0a352ef37b1ac9c642cd5b2076e3929f0cd005"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240412.0.184338/kopia-20240412.0.184338-linux-arm.tar.gz"
    sha256 "123b5f5d79f6b2bcb59f7c45ffeb3be6324cdea35a16b0955effae665a4d0c6f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240412.0.184338/kopia-20240412.0.184338-linux-arm64.tar.gz"
    sha256 "f4e3d25cc0870baf47d1ede852a05ed5868570534ddf7f1f0a08963129b64bbf"
  end

  def install
    bin.install "kopia"
  end
end
