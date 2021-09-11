# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210910.0.225151"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210910.0.225151/kopia-20210910.0.225151-macOS-x64.tar.gz"
    sha256 "42761944ffa795be3051524e09023dab2f4475dc5bedcf99448d6ba2c1eb72e1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210910.0.225151/kopia-20210910.0.225151-macOS-arm64.tar.gz"
    sha256 "046b24dce001488593b631853e9f35b30fb6cf0a1c3e67c442ae4178b42787b3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210910.0.225151/kopia-20210910.0.225151-linux-x64.tar.gz"
    sha256 "9489e0c56f52cd6c06efc5ba16e48a7ab0fdfd1bd9bd4f9a504a0d2c4b494898"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210910.0.225151/kopia-20210910.0.225151-linux-arm.tar.gz"
    sha256 "68522c8919fc9a8a77cf4664b91cdf23b13976645dede0828bc20bd52db0f629"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210910.0.225151/kopia-20210910.0.225151-linux-arm64.tar.gz"
    sha256 "abcc383990e00e258e98f9bdef404b807da2eaba57464834c7c934f68dc8f358"
  end

  def install
    bin.install "kopia"
  end
end
