# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211218.0.160947"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.160947/kopia-20211218.0.160947-macOS-x64.tar.gz"
    sha256 "8f359ab7fca9fdfc7c936f9478ff83c22f5801bcd836d1aeb01ce32b59099bc0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.160947/kopia-20211218.0.160947-macOS-arm64.tar.gz"
    sha256 "5cdeb0738b08877a9ccc3f561ba78082c8d8cb032336e0906e901633041a4eb5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.160947/kopia-20211218.0.160947-linux-x64.tar.gz"
    sha256 "d5e14e9b6057b1d350080fb582aa23489cc60ce7b037695ea205bd71dac7ce9e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.160947/kopia-20211218.0.160947-linux-arm.tar.gz"
    sha256 "211a0b7ec5c414cd69b02090eddfc22df1331b2ab577cfab039f1566090ab97b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.160947/kopia-20211218.0.160947-linux-arm64.tar.gz"
    sha256 "cdfefa004aa3446658a3b61498341a488798b55aa6f08f39434b60dd542c3350"
  end

  def install
    bin.install "kopia"
  end
end
