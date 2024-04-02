# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240401.0.225226"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.225226/kopia-20240401.0.225226-macOS-x64.tar.gz"
    sha256 "49125b27b57b4a2214c51a7a81b2ae5b0ddfdf359ca2833afc1e3dcfc5df011c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.225226/kopia-20240401.0.225226-macOS-arm64.tar.gz"
    sha256 "017844d690649f0e96443b11069651ea24a3221900bbbe2afdd0186a68e40ab7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.225226/kopia-20240401.0.225226-linux-x64.tar.gz"
    sha256 "26c70759e9441ee834aa2bb9a7c5e846be80f7965a5942329d7d8a1f1ab9cad6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.225226/kopia-20240401.0.225226-linux-arm.tar.gz"
    sha256 "b58c4714131bac7ddf67d60e64aa4de62382ebac24613e5fd2af4170cd0ea5ad"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.225226/kopia-20240401.0.225226-linux-arm64.tar.gz"
    sha256 "ce0e53af9ac0616965c2a89dcfdfe5404c91ded0501959f16241efaed4c56a8c"
  end

  def install
    bin.install "kopia"
  end
end
