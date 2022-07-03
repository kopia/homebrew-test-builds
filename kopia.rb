# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220703.0.161432"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.161432/kopia-20220703.0.161432-macOS-x64.tar.gz"
    sha256 "a1d3cf644ef03eafd8992e1e81698abfecad741b92775c10a7cdd687c3a439f4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.161432/kopia-20220703.0.161432-macOS-arm64.tar.gz"
    sha256 "b09356a7d0ac20788c12f2fbb5b99f24735bf57a81f1291bc716b2aaed03b42a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.161432/kopia-20220703.0.161432-linux-x64.tar.gz"
    sha256 "47eb16ae635ce24d7a6deba7502084ac60cc8bbcdd8beb22aac63723d8dbf01c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.161432/kopia-20220703.0.161432-linux-arm.tar.gz"
    sha256 "0d5654917799a72b359ab60939ea2da155882e1c7d0eac822a78e90f8c77a35e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.161432/kopia-20220703.0.161432-linux-arm64.tar.gz"
    sha256 "eb5ca60fcd0014a3185184a5ed7ebdd1b6a2212788e0d1db90dc4eaa9eec8a05"
  end

  def install
    bin.install "kopia"
  end
end
