# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211203.0.83830"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.83830/kopia-20211203.0.83830-macOS-x64.tar.gz"
    sha256 "7edcc07d57fa100f85cb90ec50e68eb8ed13a8fced5c38a257daf9d064c7df8a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.83830/kopia-20211203.0.83830-macOS-arm64.tar.gz"
    sha256 "3d38df978e72b133de049cde034b08a565dd4a4dcbb0ed37bd4f6742050aadaa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.83830/kopia-20211203.0.83830-linux-x64.tar.gz"
    sha256 "0207935b89727a421263b42b9b2c2905c75a2bce188b242e2ffd149b7a46bb7b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.83830/kopia-20211203.0.83830-linux-arm.tar.gz"
    sha256 "da37bd920fb595f87d4592cd18f2785812915e0d0322a1c44a7642b12ac4e527"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.83830/kopia-20211203.0.83830-linux-arm64.tar.gz"
    sha256 "03151d681ac3a20213cc4a5f13af968cf789d340d3bffd34385e5c36a4b3dcca"
  end

  def install
    bin.install "kopia"
  end
end
