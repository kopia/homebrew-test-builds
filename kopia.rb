# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210323.0.90716"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.90716/kopia-20210323.0.90716-macOS-x64.tar.gz"
    sha256 "b6501d25ae1239c457cbd328fb6b57f7f4a5059c9d126a7fe640f43c64e39aa2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.90716/kopia-20210323.0.90716-macOS-arm64.tar.gz"
    sha256 "99c0d4be9bdd03f603dfd05d3602fab189360faddf25e4956e3259da0c8fc1db"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.90716/kopia-20210323.0.90716-linux-x64.tar.gz"
    sha256 "1dd8e212bd055f6f88f7e2e6a7151a107e61c9c840ee09179b2fc4b2f4439613"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.90716/kopia-20210323.0.90716-linux-arm.tar.gz"
    sha256 "55cb63bf00e9ea6d72e7751a3d9dea7b28ada73f83d2c0923459ed6771e7e0fe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.90716/kopia-20210323.0.90716-linux-arm64.tar.gz"
    sha256 "39c69146ee1a768f3faed0f9fe422a4be0e6563650a19bd84ca01d2bab4ccfa2"
  end

  def install
    bin.install "kopia"
  end
end
