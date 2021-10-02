# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211002.0.125608"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.125608/kopia-20211002.0.125608-macOS-x64.tar.gz"
    sha256 "dd495e05e3f58afbbdac674b4feae3155dec68b7b460bee80c08df16ab422972"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.125608/kopia-20211002.0.125608-macOS-arm64.tar.gz"
    sha256 "2feb083545ce136c6c63c3b44e24bd7daced5487c07eaabdcc9edf87a07fd12e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.125608/kopia-20211002.0.125608-linux-x64.tar.gz"
    sha256 "c68bc6725de63ed508673c696130b41162b11d47721e348c714d3690ebff04e5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.125608/kopia-20211002.0.125608-linux-arm.tar.gz"
    sha256 "7bfca05a745392654e7c54fd4236887dadf04abc113e39324b119efad0c51b78"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.125608/kopia-20211002.0.125608-linux-arm64.tar.gz"
    sha256 "82cc4fae16c57d70e419a55dde9a1a435c57c7e4ab50613223c2ea1cf4f0c09d"
  end

  def install
    bin.install "kopia"
  end
end
