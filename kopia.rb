# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230327.0.101220"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.101220/kopia-20230327.0.101220-macOS-x64.tar.gz"
    sha256 "a007ca9a992f254b5a332dbd0c85d48da43a0b0dee64cabd66e13d3f1f0dc67f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.101220/kopia-20230327.0.101220-macOS-arm64.tar.gz"
    sha256 "f8a694f6bbe409a54cd2cd1b30b6fca6d38fa35287e9d9479384e93af0360ea5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.101220/kopia-20230327.0.101220-linux-x64.tar.gz"
    sha256 "4d710b77d07b9a500cce607102cf05c42c9c2c8e207b3118b6156054b7803f7c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.101220/kopia-20230327.0.101220-linux-arm.tar.gz"
    sha256 "36af6557f9ebb1b7f35350ad2acaae6302e1e94369656ee04219447df9f5f290"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.101220/kopia-20230327.0.101220-linux-arm64.tar.gz"
    sha256 "c265908aae12896e75b7db70995ac55e7c2be8c17846df5897b260e3dbc27834"
  end

  def install
    bin.install "kopia"
  end
end
