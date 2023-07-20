# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230719.0.192617"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230719.0.192617/kopia-20230719.0.192617-macOS-x64.tar.gz"
    sha256 "2f264e163544f8cec839157cd5f2902eebe7bb11847b97f40275ca4492b1369f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230719.0.192617/kopia-20230719.0.192617-macOS-arm64.tar.gz"
    sha256 "8389604e011742d62f00ece619c38e4d49950c7af4b99ba88d374101196f228a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230719.0.192617/kopia-20230719.0.192617-linux-x64.tar.gz"
    sha256 "4c49651fffe6c116fd68d5e04ae44f5ae47df87f7846bf49c3767fc64988817b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230719.0.192617/kopia-20230719.0.192617-linux-arm.tar.gz"
    sha256 "8d9365b4a226d85b7ab79e2be70435daa1b2edd25d718e2770da295ab45bc1ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230719.0.192617/kopia-20230719.0.192617-linux-arm64.tar.gz"
    sha256 "d73b7f59f938a5c7f0bf399b46dc649f2f14ce6c1a5bb216f914ce4ebd18d2ea"
  end

  def install
    bin.install "kopia"
  end
end
