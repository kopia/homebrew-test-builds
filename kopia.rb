# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241019.0.214946"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241019.0.214946/kopia-20241019.0.214946-macOS-x64.tar.gz"
    sha256 "2e1f4ac77fd1955bc33cbd176d9bf8a1d425ee0b50583436a1b5fb6c2b0825b3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241019.0.214946/kopia-20241019.0.214946-macOS-arm64.tar.gz"
    sha256 "fe1107ea8bbd1ad213b0a566cd977fa81b2f0166ebfa98576c55443a4fc62383"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241019.0.214946/kopia-20241019.0.214946-linux-x64.tar.gz"
    sha256 "4a975914486c3517c2878962efaecb040bcf17fab9af9512b603feeb1217b145"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241019.0.214946/kopia-20241019.0.214946-linux-arm.tar.gz"
    sha256 "192a2282c3cafef20163c2fa7cf05649113f5c3586c84422cd377dbf78b458d6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241019.0.214946/kopia-20241019.0.214946-linux-arm64.tar.gz"
    sha256 "566e50c92130f86ce9e98abfc62a1549eca46ae4120c8868e83b261f197525ed"
  end

  def install
    bin.install "kopia"
  end
end
