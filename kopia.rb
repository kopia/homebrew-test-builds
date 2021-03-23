# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210323.0.64338"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.64338/kopia-20210323.0.64338-macOS-x64.tar.gz"
    sha256 "90b1e343cf54962e442e38c3a4468659590b845cb38fe1c1b951febd4033a2f1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.64338/kopia-20210323.0.64338-macOS-arm64.tar.gz"
    sha256 "2f8370edcc5ed8ee270cccc434fe3fbf28984a88896cd31018396b5be6dfab89"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.64338/kopia-20210323.0.64338-linux-x64.tar.gz"
    sha256 "6e72f132f641b9f5b6c104383927216fe8515cdc05b5a0aa53d11dc11aff361d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.64338/kopia-20210323.0.64338-linux-arm.tar.gz"
    sha256 "0b2965cc7307924ce5234bbf6526b2ea7d99465399cd72b286c1264690479890"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.64338/kopia-20210323.0.64338-linux-arm64.tar.gz"
    sha256 "e0b5ea7160ecf178aec5341361d91bed5f0cbfb6ba2d69f197a16ce14d797483"
  end

  def install
    bin.install "kopia"
  end
end
