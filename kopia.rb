# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210925.0.145431"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210925.0.145431/kopia-20210925.0.145431-macOS-x64.tar.gz"
    sha256 "494ee2aa042c459fd34fcc605af937d720b6232023205b84a6be9500aed2ef3d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210925.0.145431/kopia-20210925.0.145431-macOS-arm64.tar.gz"
    sha256 "5cefb4d2348d5cf0edf904967fe1111ff5282d6b5d1f8f9da0c49900ae76dadf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210925.0.145431/kopia-20210925.0.145431-linux-x64.tar.gz"
    sha256 "417dfe338e4e49e48a88d5ae9a096d4c7b5df7c334a24ec08568ab71cabe008d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210925.0.145431/kopia-20210925.0.145431-linux-arm.tar.gz"
    sha256 "a51cc670c4aa6b766e6c699ff443599b8e5bc9ab7404d3094ce5ab51a85e730e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210925.0.145431/kopia-20210925.0.145431-linux-arm64.tar.gz"
    sha256 "30f284d3c54e449b4ac2cddac2604c5d8b1a779a17fd9443ede750c9805c9c86"
  end

  def install
    bin.install "kopia"
  end
end
