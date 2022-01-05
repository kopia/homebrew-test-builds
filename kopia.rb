# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220104.0.173211"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220104.0.173211/kopia-20220104.0.173211-macOS-x64.tar.gz"
    sha256 "581c3d7b13a0f7cf9062b9e97ab4585f9f2fa6338f243b81d649c3d36e3c016a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220104.0.173211/kopia-20220104.0.173211-macOS-arm64.tar.gz"
    sha256 "98267b6c86c67143b776a7480b28f6815537d6f794b0f62072e8d312c94893be"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220104.0.173211/kopia-20220104.0.173211-linux-x64.tar.gz"
    sha256 "00cd8af4756dddf0fe88a6b2b7d2061f103eee45d2e799a7b87d688004cc4a54"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220104.0.173211/kopia-20220104.0.173211-linux-arm.tar.gz"
    sha256 "684f52f545e45559f3e7a455663b4c9112cde1cf1dc5b885c2ce67286b7cf12c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220104.0.173211/kopia-20220104.0.173211-linux-arm64.tar.gz"
    sha256 "c44c6068ddb7051dfa9489b5ad8dbc50608828d9ed5e627cb41a98f9d20e16c2"
  end

  def install
    bin.install "kopia"
  end
end
