# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210403.0.232250"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232250/kopia-20210403.0.232250-macOS-x64.tar.gz"
    sha256 "e40281a9e2dab77d74b9282bccadeabb09085559d653c7d9813f14d269eda474"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232250/kopia-20210403.0.232250-macOS-arm64.tar.gz"
    sha256 "31b77e369458af98ab3d096b2bd89f4f86f8b4668d443886273442bc38f152c5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232250/kopia-20210403.0.232250-linux-x64.tar.gz"
    sha256 "0bbe8754229ecbdc20ac9a4c8ebc7757d5cecc5f81385444910c26e196d1b451"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232250/kopia-20210403.0.232250-linux-arm.tar.gz"
    sha256 "09533aa2aa89e4131534805f0e68e2b079b9786651cd2b70358aafeebc0c1a31"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232250/kopia-20210403.0.232250-linux-arm64.tar.gz"
    sha256 "e9fe3f9fcb42e0dcc0ebabaa770322fd0cb0fd9c80233db4dc74ff34bdfe9d38"
  end

  def install
    bin.install "kopia"
  end
end
