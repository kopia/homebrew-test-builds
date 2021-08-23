# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210822.0.123336"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210822.0.123336/kopia-20210822.0.123336-macOS-x64.tar.gz"
    sha256 "5cfa76bebe9790a387c3e624892f01c706fa3ef67f54fa9f64b5e348b407f8d1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210822.0.123336/kopia-20210822.0.123336-macOS-arm64.tar.gz"
    sha256 "8eb05640fc8535974a5d538d6b42584c7a634759bfcdc480881aa2afa4ade969"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210822.0.123336/kopia-20210822.0.123336-linux-x64.tar.gz"
    sha256 "45d847b4b6ef27a9398cbb971b36fb22d49e86b485eec9ebc1b48c910145d941"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210822.0.123336/kopia-20210822.0.123336-linux-arm.tar.gz"
    sha256 "f5b1c7d6653c7f6a9e4bbee034bd9d12d9bece7147f2f3373c204af0f1d1ee0a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210822.0.123336/kopia-20210822.0.123336-linux-arm64.tar.gz"
    sha256 "54ba76f91a4a355940ee1c9affe81730365c9927a9de80e3f08e8b208364ebaa"
  end

  def install
    bin.install "kopia"
  end
end
