# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230414.0.165757"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230414.0.165757/kopia-20230414.0.165757-macOS-x64.tar.gz"
    sha256 "199f9793acef4c475966ed0d8ec93056fb8f478817f568d70afa13ffd35a23a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230414.0.165757/kopia-20230414.0.165757-macOS-arm64.tar.gz"
    sha256 "b3e95949986fe67449ba18a632d7fb143e146053048b450173a0251fadfc6a76"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230414.0.165757/kopia-20230414.0.165757-linux-x64.tar.gz"
    sha256 "d603ae5ab5a577aaea9eb00c950e6a559723bf75ec9b750ce14d3d3d29a7db4f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230414.0.165757/kopia-20230414.0.165757-linux-arm.tar.gz"
    sha256 "4aff892bd5a604d0ba2e204de50ce6d9ba0c1486610b6b5188f2223368e5ccd4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230414.0.165757/kopia-20230414.0.165757-linux-arm64.tar.gz"
    sha256 "2bb9075748193913f44305cc7a92783e9e6b9ee45f4aea1dbfdc5a15f1028b80"
  end

  def install
    bin.install "kopia"
  end
end
