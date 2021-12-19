# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211218.0.161032"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161032/kopia-20211218.0.161032-macOS-x64.tar.gz"
    sha256 "5c05b588bb106afa06c3aa4bb2e855a21c1ef3cd3c2f1ec587130a2be581644f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161032/kopia-20211218.0.161032-macOS-arm64.tar.gz"
    sha256 "b04089cc9df6664dc038f8a7aaf59080728052a722d20571b06bf078ef388ee7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161032/kopia-20211218.0.161032-linux-x64.tar.gz"
    sha256 "7fd6891671c87d7df7307d5d1dde595c25cd99d3a0ef12b896f614a1c68f1059"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161032/kopia-20211218.0.161032-linux-arm.tar.gz"
    sha256 "f432e4c492490f8c454dc77ef67353b9cdddf5cb2b83aa95de95962f24fa199b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161032/kopia-20211218.0.161032-linux-arm64.tar.gz"
    sha256 "48760b66261e3be02a93eee3f8a6c3507c987d630e81a0c581e5a09ffd3a0d02"
  end

  def install
    bin.install "kopia"
  end
end
