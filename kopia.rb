# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211106.0.164427"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.164427/kopia-20211106.0.164427-macOS-x64.tar.gz"
    sha256 "d93b499a177b7fedd2974ebb20fd6a0e7e61f721ad7934b1d1f1f63cec268954"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.164427/kopia-20211106.0.164427-macOS-arm64.tar.gz"
    sha256 "63395c064490f5ba8bc92dc415eeee4ed3afbd607720130bf0d2f8e1a4d58dfc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.164427/kopia-20211106.0.164427-linux-x64.tar.gz"
    sha256 "5b35f3e169811ebddfae25dff0c89ddb435f4f9a6cbdb4059dc41b5978475b5c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.164427/kopia-20211106.0.164427-linux-arm.tar.gz"
    sha256 "2f799ff5c7089bfd8eab4da1ba546ac82c0cd0fd9bb6a61faf6263b6815a1894"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.164427/kopia-20211106.0.164427-linux-arm64.tar.gz"
    sha256 "63a38568744b5100265b345a21fb1098c704b38e1a17f5c132a933ebe5c00503"
  end

  def install
    bin.install "kopia"
  end
end
