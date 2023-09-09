# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230909.0.130753"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230909.0.130753/kopia-20230909.0.130753-macOS-x64.tar.gz"
    sha256 "4cdebde28565166f8d86fbbb4e93f2987a3b9e2b62b395af84f2310d78e5b87e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230909.0.130753/kopia-20230909.0.130753-macOS-arm64.tar.gz"
    sha256 "3fb7bcae3cd490dd4acf7ec9b90e99e38d47df7717dbddafbd37a90bc2db104d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230909.0.130753/kopia-20230909.0.130753-linux-x64.tar.gz"
    sha256 "b2e5a580aa7f5fef82502df022e6e9f44fda32138f046b60d6dafdaa593ffa7e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230909.0.130753/kopia-20230909.0.130753-linux-arm.tar.gz"
    sha256 "3676c2cde02cf28932f268f1ae3ddf8b76f56b1be8abfe1131bc95f4796d4dd1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230909.0.130753/kopia-20230909.0.130753-linux-arm64.tar.gz"
    sha256 "0783c29a2c4236f7005c390d0f585926c9e236c1d356ebab30266047a8812e2b"
  end

  def install
    bin.install "kopia"
  end
end
