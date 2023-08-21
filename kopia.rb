# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230820.0.171720"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230820.0.171720/kopia-20230820.0.171720-macOS-x64.tar.gz"
    sha256 "b8d4f9000350036ebc6196703cf191133d0c8c9e1738d3800e73bd3c6eaf8965"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230820.0.171720/kopia-20230820.0.171720-macOS-arm64.tar.gz"
    sha256 "52483f06b9fe8e0dabc86f560e3554a8ce55f5785e0fd46847e751a20116a6bd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230820.0.171720/kopia-20230820.0.171720-linux-x64.tar.gz"
    sha256 "37dfffbbb4a2197f9fbb68fc8dda06aed02452d03b895b9ccd71203142b66475"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230820.0.171720/kopia-20230820.0.171720-linux-arm.tar.gz"
    sha256 "60c126b9d20949e9461128bf118f8a2222be119008efeafdf5a02c05280f074d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230820.0.171720/kopia-20230820.0.171720-linux-arm64.tar.gz"
    sha256 "971955a8212ad61d7d065d117ca977946930961ade94c0f45edad2f1bc9741c5"
  end

  def install
    bin.install "kopia"
  end
end
