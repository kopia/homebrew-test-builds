# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221002.0.52432"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.52432/kopia-20221002.0.52432-macOS-x64.tar.gz"
    sha256 "ec25b38669ff2c266b8377fd47f901f186e651d8839cdc3a36c06a5b85089323"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.52432/kopia-20221002.0.52432-macOS-arm64.tar.gz"
    sha256 "4b1f2d78bee84580a81d4f5670745462934dd790f87a8b9d158f21ba8b1bdf5e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.52432/kopia-20221002.0.52432-linux-x64.tar.gz"
    sha256 "421d1e1db283d5948a1b1c68586cebb7f86b81b702f67feab2ede45721ed3259"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.52432/kopia-20221002.0.52432-linux-arm.tar.gz"
    sha256 "e0b1deab9d9b00559a99ed227ebafee94bf70211b0d3fabdac2144657d01b376"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.52432/kopia-20221002.0.52432-linux-arm64.tar.gz"
    sha256 "2db8910e15fc42b3123a58833d047dc5c1c7d304f40450ab780b14703b67e1df"
  end

  def install
    bin.install "kopia"
  end
end
