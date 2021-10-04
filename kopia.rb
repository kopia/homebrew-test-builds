# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211003.0.181054"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.181054/kopia-20211003.0.181054-macOS-x64.tar.gz"
    sha256 "506ef17af2dd6340881a3d4c13e8e39aa3f50d0cef09b05dea2c157147bd7f80"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.181054/kopia-20211003.0.181054-macOS-arm64.tar.gz"
    sha256 "e5ab3e3323fd59b8a140b52568cdef34f1f561e41b76c1941eb979196f6a724e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.181054/kopia-20211003.0.181054-linux-x64.tar.gz"
    sha256 "44ca4ba8b9df1d056d37c7fbeb07d3651714db3cf5ebe8afdfd54cb27feab55a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.181054/kopia-20211003.0.181054-linux-arm.tar.gz"
    sha256 "eebbb0fea3f0c981a14046bbd71c7fe1a4646d446f58815407412e6e37bab9e3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.181054/kopia-20211003.0.181054-linux-arm64.tar.gz"
    sha256 "11ad48ac074dac58b2434816855a1aae1c19dfb9d034e31431857d64b76ee13b"
  end

  def install
    bin.install "kopia"
  end
end
