# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210928.0.151902"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210928.0.151902/kopia-20210928.0.151902-macOS-x64.tar.gz"
    sha256 "3c381e02a50e596e35411996fa52049b99a29ceafd79cb6e03d7ace0471b353a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210928.0.151902/kopia-20210928.0.151902-macOS-arm64.tar.gz"
    sha256 "6ba47fb10e50a9f951dbdf45c63ebaf55190b1663ea5a2fb758c52d13c7f7793"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210928.0.151902/kopia-20210928.0.151902-linux-x64.tar.gz"
    sha256 "fca4d5746739d19b49eab5c6d7ed363e52a713d08e3c5e08a1fa5d2600c3523e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210928.0.151902/kopia-20210928.0.151902-linux-arm.tar.gz"
    sha256 "3129b665aca5a48e786883616e05bc3b6f2bda846f46c84014fcfd7810dce780"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210928.0.151902/kopia-20210928.0.151902-linux-arm64.tar.gz"
    sha256 "403da41dcafa60573ecfba38a925d7e12e448de0db4d3c82608870521d6dd40b"
  end

  def install
    bin.install "kopia"
  end
end
