# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211124.0.53929"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211124.0.53929/kopia-20211124.0.53929-macOS-x64.tar.gz"
    sha256 "597de8cb265aa60437543132af6e96adda5f41d47a5a6254c127484c012760c7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211124.0.53929/kopia-20211124.0.53929-macOS-arm64.tar.gz"
    sha256 "70c4d085fbf416a3890e7d02292741759e9cd1dc711830a78569f4b477634602"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211124.0.53929/kopia-20211124.0.53929-linux-x64.tar.gz"
    sha256 "1051794e163c01c740a9d83e21d571ee6cfa4c86b022e91404f508d6438646d5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211124.0.53929/kopia-20211124.0.53929-linux-arm.tar.gz"
    sha256 "6f07ed2b6ff787426ece0a5183d0cf1e4338edbd59de8060bdfbabcd389a3bbe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211124.0.53929/kopia-20211124.0.53929-linux-arm64.tar.gz"
    sha256 "232481f502f9b921ff1b295720f97da42cbb6877112b7e1137f60d62430f7979"
  end

  def install
    bin.install "kopia"
  end
end
