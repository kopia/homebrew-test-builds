# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230312.0.52018"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.52018/kopia-20230312.0.52018-macOS-x64.tar.gz"
    sha256 "cdcc2d76d7714d5c9877b381d0a79ef20bd3da0fc199bf1f567ab2ca8143c7c9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.52018/kopia-20230312.0.52018-macOS-arm64.tar.gz"
    sha256 "57762db303916d9b9d2f189e8ceccce8c39410fbba72b3d91bd57d24edc87366"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.52018/kopia-20230312.0.52018-linux-x64.tar.gz"
    sha256 "d5bf39bd356ca3f231ce38f2ed8fbc8b36ed8e28dfb3c695a8206f91a2d79adc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.52018/kopia-20230312.0.52018-linux-arm.tar.gz"
    sha256 "70569ed4ab8d85bb58c9ad80ec0303b55df5e42fbf655dc9ee63e0977906a97c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.52018/kopia-20230312.0.52018-linux-arm64.tar.gz"
    sha256 "febe143ddcfaf3e34ce0c19d9fddff074318f0501e4e86ae00b07a328b33563c"
  end

  def install
    bin.install "kopia"
  end
end
