# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210416.0.81713"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-macOS-x64.tar.gz"
    sha256 "3b8c4f3ef84f0413e676d3a89a90f5408ef54e80df1d3b0c16bc58f86bb3d016"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-macOS-arm64.tar.gz"
    sha256 "41c1d6d6f866b77fe779766f4e6e5ae5a44bb839e58de5392df585b8705e820e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-linux-x64.tar.gz"
    sha256 "0cc03d88a1f4a8c20b28451e698a0d6ecb9e43596372dfa27b9fe133ef26526b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-linux-arm.tar.gz"
    sha256 "4f0168c23a7e31e844c098a524c106bf1d85602ffd62d921b4683df8acde079b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-linux-arm64.tar.gz"
    sha256 "b7c8c5118b538303df8abaee89f663d903cc4837391ff850ac6a02cf9b3d724c"
  end

  def install
    bin.install "kopia"
  end
end
