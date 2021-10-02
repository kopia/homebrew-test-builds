# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211002.0.162614"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.162614/kopia-20211002.0.162614-macOS-x64.tar.gz"
    sha256 "afe095a833a0dbe4d344abc4ffb692174d706ae0e3fed5a2f6c47101aa793990"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.162614/kopia-20211002.0.162614-macOS-arm64.tar.gz"
    sha256 "acf25018e08881a1a87f86a8e8e0ba1c60c5ca1cb4ea1aa0892f1363d87dd1c1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.162614/kopia-20211002.0.162614-linux-x64.tar.gz"
    sha256 "c46c0af4276998f938157a925eabb4b71b27f72d528ab10f0e05a5596ce48e3e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.162614/kopia-20211002.0.162614-linux-arm.tar.gz"
    sha256 "2cacbda8e592cd176ea0a7975011f896beac6eea328d1c148f97aec6bc77ada8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.162614/kopia-20211002.0.162614-linux-arm64.tar.gz"
    sha256 "7217827b65361f9f9b8703defd8d085f9a16a71967d69f96016ab54d10d7f439"
  end

  def install
    bin.install "kopia"
  end
end
