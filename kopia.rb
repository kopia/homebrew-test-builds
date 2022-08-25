# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220825.0.104458"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220825.0.104458/kopia-20220825.0.104458-macOS-x64.tar.gz"
    sha256 "6f6f38a8cf807b3169623e6f881b8f7a78446080ecac38d398f1985cdb3bec74"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220825.0.104458/kopia-20220825.0.104458-macOS-arm64.tar.gz"
    sha256 "d2c072cddc36f56de1e5f979a560b26a61322a3ddf52ead76c0df23aa66f8734"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220825.0.104458/kopia-20220825.0.104458-linux-x64.tar.gz"
    sha256 "ca708fb51bf484bfc9b6544b71ec022a23aa2e6c3a5a5dd86963312e9454b769"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220825.0.104458/kopia-20220825.0.104458-linux-arm.tar.gz"
    sha256 "47bd795b0b1b8959032b9abd96180b929472a6307086351c1bf5fc2644b0bbf2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220825.0.104458/kopia-20220825.0.104458-linux-arm64.tar.gz"
    sha256 "3ee0700600878de976b5937589e2891b718c74c0b4ed7fb62844cea3d424e643"
  end

  def install
    bin.install "kopia"
  end
end
