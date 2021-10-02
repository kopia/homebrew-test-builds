# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211001.0.225650"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225650/kopia-20211001.0.225650-macOS-x64.tar.gz"
    sha256 "d366fbab56dfd151289a9dbf0207c9c1ef7778e7e28eaba7aff41fd41f8b15a9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225650/kopia-20211001.0.225650-macOS-arm64.tar.gz"
    sha256 "672763b0c9453c5978f9de3e76f34c4f5967659e2c7166db376a6297a615256d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225650/kopia-20211001.0.225650-linux-x64.tar.gz"
    sha256 "bd25b19b1d0344fa802acb66e7fc2d353d3b8b6da33c970388630321e9db1db9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225650/kopia-20211001.0.225650-linux-arm.tar.gz"
    sha256 "7c16cf93ed0963593fbe6b9c1e26068f200d1e98d55b33021d14d0ed6cfaf7a8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225650/kopia-20211001.0.225650-linux-arm64.tar.gz"
    sha256 "577a563c91b1f41ee04e7efc515b3e7a80493fa04afd0cb6173dde3661e9b170"
  end

  def install
    bin.install "kopia"
  end
end
