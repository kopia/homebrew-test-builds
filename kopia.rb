# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220822.0.204227"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220822.0.204227/kopia-20220822.0.204227-macOS-x64.tar.gz"
    sha256 "e17c9dc352c7bc561c96a23b8efe11e17a9d496864fcdf53b54c04d53991a8b0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220822.0.204227/kopia-20220822.0.204227-macOS-arm64.tar.gz"
    sha256 "0df2a192b48dacc027f714fadd2e4016107f79f3ae1848167822959fe9af3876"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220822.0.204227/kopia-20220822.0.204227-linux-x64.tar.gz"
    sha256 "63f7c996edfe9167cab2e4976c2ac39cc86da2db10884100a42dab0806f3322c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220822.0.204227/kopia-20220822.0.204227-linux-arm.tar.gz"
    sha256 "1e4cd98ce487be04470f1fd0ec20f46317c7adfa0805a3935317b3a4f6aa07d7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220822.0.204227/kopia-20220822.0.204227-linux-arm64.tar.gz"
    sha256 "30c56bcdcf4eec5cb062f3398b8765b0652d955247bd067c371b202ce1a202ab"
  end

  def install
    bin.install "kopia"
  end
end
