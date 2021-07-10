# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210709.0.213500"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210709.0.213500/kopia-20210709.0.213500-macOS-x64.tar.gz"
    sha256 "ed5c100ddba45e6a3057f33876feb162f3c2a6131f51ba76f0b191a2a284f667"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210709.0.213500/kopia-20210709.0.213500-macOS-arm64.tar.gz"
    sha256 "650f17e3c06e3a5b84d08fa8f8c39baefaaf54e5332bff2b1698e95f5f8c45f0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210709.0.213500/kopia-20210709.0.213500-linux-x64.tar.gz"
    sha256 "f6872721b4ffbd4b2d08ea23b563ce6fbd07bda4a98fd6200b70d1e62abfab9b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210709.0.213500/kopia-20210709.0.213500-linux-arm.tar.gz"
    sha256 "c112c7d3ff5bef32ffd7d3e0fa50d27a288c4991975a2b7831e475749983f8ed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210709.0.213500/kopia-20210709.0.213500-linux-arm64.tar.gz"
    sha256 "3840e6e39961b1c3bd34655d44a80332839183623c544f077aee53f027d66360"
  end

  def install
    bin.install "kopia"
  end
end
