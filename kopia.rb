# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210518.0.85936"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.85936/kopia-20210518.0.85936-macOS-x64.tar.gz"
    sha256 "2981ce3c271a1f5ad6b9d5279dd12a7462a1b5afeb0fbe2d418d8ee687ef2240"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.85936/kopia-20210518.0.85936-macOS-arm64.tar.gz"
    sha256 "31a91c4df463a3e08a8450c62282ad4154dce45622f80d89f7d1f445f1bbc4b2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.85936/kopia-20210518.0.85936-linux-x64.tar.gz"
    sha256 "8ae1a3003996fba41a990fac98db4dacbea6424d497da3b621625549e23b084e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.85936/kopia-20210518.0.85936-linux-arm.tar.gz"
    sha256 "ebf324c797cc12b644159fa1f38761b2e9b77649dd7b8633c702bea729787013"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.85936/kopia-20210518.0.85936-linux-arm64.tar.gz"
    sha256 "5f7958728028fb0691f30b537b1c635ca6e974f51efdabd43fffc9600f2117a9"
  end

  def install
    bin.install "kopia"
  end
end
