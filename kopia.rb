# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211218.0.161109"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161109/kopia-20211218.0.161109-macOS-x64.tar.gz"
    sha256 "daea46c31e78206cc220f167370dc7992020d560715ee0525016a5d368f6aede"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161109/kopia-20211218.0.161109-macOS-arm64.tar.gz"
    sha256 "127557d42f7bdf65837d45af50727f693360acb85b3ec5b60d35c4453a21ff33"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161109/kopia-20211218.0.161109-linux-x64.tar.gz"
    sha256 "78ebd9506d83df4b0a730a2ba1299eeebe638c64651c9f012026a4643399d904"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161109/kopia-20211218.0.161109-linux-arm.tar.gz"
    sha256 "2b173bed54b6557638fcb24ee1659f9c4696fc7fdbba9a97d389fca53a21cae8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161109/kopia-20211218.0.161109-linux-arm64.tar.gz"
    sha256 "0b57358143847bbae32dae4edb6ba035dbfa32cced528e164b39564d47173b51"
  end

  def install
    bin.install "kopia"
  end
end
