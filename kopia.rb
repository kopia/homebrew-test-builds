# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220611.0.63133"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.63133/kopia-20220611.0.63133-macOS-x64.tar.gz"
    sha256 "e7379ff990f562b04da7768018961bb135f8a69880804bb996ee42aac055dbaa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.63133/kopia-20220611.0.63133-macOS-arm64.tar.gz"
    sha256 "5765a212dfdff601f1ac9d46821bfb9644285e36081c6d3eda4a8046c780529e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.63133/kopia-20220611.0.63133-linux-x64.tar.gz"
    sha256 "2e555d5e611f3702439c05f0c0772a674377bc12387644b7d5e98f776bc3b972"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.63133/kopia-20220611.0.63133-linux-arm.tar.gz"
    sha256 "38b381b40ad25373422281656e08942c74306c2f9af5e8fa560b098374d85489"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.63133/kopia-20220611.0.63133-linux-arm64.tar.gz"
    sha256 "d81946f20eb2f274f4cb357ed2a2a67fa59f064dec7e53a80c8a2804a703e211"
  end

  def install
    bin.install "kopia"
  end
end
