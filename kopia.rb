# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260203.0.212529"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.212529/kopia-20260203.0.212529-macOS-x64.tar.gz"
    sha256 "ba5aba88421d7e4885c9535fb7cc260bf2b873e9efec1e9cc6edd132053f7b27"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.212529/kopia-20260203.0.212529-macOS-arm64.tar.gz"
    sha256 "49e63b21ff501862a5701a1a7652d4c7fe8032f2c0353e1bc613a04c923f91fe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.212529/kopia-20260203.0.212529-linux-x64.tar.gz"
    sha256 "8b9ad813d09b91bf828cd235921a99641f7c91fbcfb992084e5431a9602a6edd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.212529/kopia-20260203.0.212529-linux-arm.tar.gz"
    sha256 "e48ee12c89686ab6f58eb06fe373723a17af8d79a6be3d5d1ed6d4462af72c21"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.212529/kopia-20260203.0.212529-linux-arm64.tar.gz"
    sha256 "da12aeb98439a482f30a4bbd5a264070cfd29fd10fc75372c9b664ab2212c294"
  end

  def install
    bin.install "kopia"
  end
end
