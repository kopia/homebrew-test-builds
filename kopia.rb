# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211213.0.111143"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.111143/kopia-20211213.0.111143-macOS-x64.tar.gz"
    sha256 "f50e790ce60eb8453598c97868317008bd528abbe557854c432d85d3f24c8c32"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.111143/kopia-20211213.0.111143-macOS-arm64.tar.gz"
    sha256 "e88f4aafefc0268b37fe7d00fe59fe9dd15bb1cd0ce5b8dd5cddb599e07a09cf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.111143/kopia-20211213.0.111143-linux-x64.tar.gz"
    sha256 "252a4fbdb709df7ed59a7d9a259246fde6d1e4ef28ae23608bde788b235ca3c9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.111143/kopia-20211213.0.111143-linux-arm.tar.gz"
    sha256 "ea464e0c7aaa0766589c822ebedccaa27e38eb31032085ff2394345bcbd59486"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.111143/kopia-20211213.0.111143-linux-arm64.tar.gz"
    sha256 "07221330e142d146210d924e66fd9e3839bffbdf974f5702aa383afbe1f2eb15"
  end

  def install
    bin.install "kopia"
  end
end
