# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211229.0.104351"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211229.0.104351/kopia-20211229.0.104351-macOS-x64.tar.gz"
    sha256 "5b36bd2e657fd607d8a7d1a3346db52c7364d6efd06e53a82b6bd5d15760f1a7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211229.0.104351/kopia-20211229.0.104351-macOS-arm64.tar.gz"
    sha256 "55f36ed1119f1ca5dd9385f90c893a968b45d4af1b9807373891d35ee821fa35"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211229.0.104351/kopia-20211229.0.104351-linux-x64.tar.gz"
    sha256 "af6113677f5efe263b5d15f458db6350e21424e4ae88e0695aa723fb00b2938d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211229.0.104351/kopia-20211229.0.104351-linux-arm.tar.gz"
    sha256 "3ce6f8d07d2ac39ac2782bd3495ff043d137220b0828eaa3ae8e810af3b8bd6c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211229.0.104351/kopia-20211229.0.104351-linux-arm64.tar.gz"
    sha256 "2fd258c497c6a76fafdc732ec549bec626280db9a4af310fc773dfef571571a5"
  end

  def install
    bin.install "kopia"
  end
end
