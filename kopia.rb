# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210402.0.222656"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.222656/kopia-20210402.0.222656-macOS-x64.tar.gz"
    sha256 "dee1efb1e907ab7ffb0889f77ef2f4b56704b80befd9961ebbba6c843570bcf5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.222656/kopia-20210402.0.222656-macOS-arm64.tar.gz"
    sha256 "e7508e5789a1766bfc267717a629cd4fbc81781f5b3a8911886224ce3843187d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.222656/kopia-20210402.0.222656-linux-x64.tar.gz"
    sha256 "d418c00e5e5a80942cf0c7f1178ec72708c0696d3d45ef751decaf0550355986"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.222656/kopia-20210402.0.222656-linux-arm.tar.gz"
    sha256 "e36b24dfde444be894e4bce8b8b63327eb23b9f116da59742d8f017073917803"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.222656/kopia-20210402.0.222656-linux-arm64.tar.gz"
    sha256 "272ab8055402ca2cc26f5811dbe551db173cfd09962437dde0a79999196a75e1"
  end

  def install
    bin.install "kopia"
  end
end
