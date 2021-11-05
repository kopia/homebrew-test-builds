# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211105.0.101803"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.101803/kopia-20211105.0.101803-macOS-x64.tar.gz"
    sha256 "7e7c69219b87fdd728d0f636e280cdba486bdc9a95fd5ed8fc5a81756725e800"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.101803/kopia-20211105.0.101803-macOS-arm64.tar.gz"
    sha256 "6032783f50115cd037911b77ebdb5dcd9fbf14a4b4eba4ab3b6daf112ff14d32"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.101803/kopia-20211105.0.101803-linux-x64.tar.gz"
    sha256 "7bb9d8ab6a65708c5b007fb593b57ebc2c64cd535e739ff602f3122d989d6a91"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.101803/kopia-20211105.0.101803-linux-arm.tar.gz"
    sha256 "4b0adcc0deac6e3a1b2cccc271eb47ea937d931610cfddfa8763fe510cbb402c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.101803/kopia-20211105.0.101803-linux-arm64.tar.gz"
    sha256 "86ed355e1230c0a533ad3a198fe771a1332f2315d6788fa9e4f6cd2d12e22006"
  end

  def install
    bin.install "kopia"
  end
end
