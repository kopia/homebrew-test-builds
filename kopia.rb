# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210412.0.185700"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185700/kopia-20210412.0.185700-macOS-x64.tar.gz"
    sha256 "ddfce6f788ccb97a2a858340d3826055bcd66260ea14b991141029585c8c58a9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185700/kopia-20210412.0.185700-macOS-arm64.tar.gz"
    sha256 "ff1e44a300256bb04bfc19ff8124259f03d18dfdd5e3c58ef7af5cd9b584a926"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185700/kopia-20210412.0.185700-linux-x64.tar.gz"
    sha256 "2830974a24ee10cdcf00c82c00c1ac57b5cd0f6ced589eea218e5d2c726542d1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185700/kopia-20210412.0.185700-linux-arm.tar.gz"
    sha256 "2273116325dc6d385f4866dbf59ef96961c2171509936e71392768699e94c177"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185700/kopia-20210412.0.185700-linux-arm64.tar.gz"
    sha256 "ddc8a3fdfbcbc36dd468cdaf92b9bb8ae00a846dc4e146e46f35969417368397"
  end

  def install
    bin.install "kopia"
  end
end
