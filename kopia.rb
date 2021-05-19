# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210518.0.202751"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.202751/kopia-20210518.0.202751-macOS-x64.tar.gz"
    sha256 "70dd7382ac9c3bb30b1a66a58404c41883228b3c3c63bca774f71dc839a0aab5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.202751/kopia-20210518.0.202751-macOS-arm64.tar.gz"
    sha256 "f5f976a894c5547dd181db2dc7379db03e324096792e5a9654392ffb4d734828"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.202751/kopia-20210518.0.202751-linux-x64.tar.gz"
    sha256 "4ebcf7611222fdfd1fd6775d4ca5a311c92c89c1d9c31b03d9c03442162b82a2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.202751/kopia-20210518.0.202751-linux-arm.tar.gz"
    sha256 "4228615be45a0e788534e31dfe1290ca522d4dc4ee704a0db66b97005ed4812e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.202751/kopia-20210518.0.202751-linux-arm64.tar.gz"
    sha256 "4eb51602cb8d399d380630baa4f41d754e6b451df0f22b9d84df4f029e0f9135"
  end

  def install
    bin.install "kopia"
  end
end
