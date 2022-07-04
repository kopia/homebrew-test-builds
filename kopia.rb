# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220704.0.100916"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.100916/kopia-20220704.0.100916-macOS-x64.tar.gz"
    sha256 "18033e7008d016e83d651748f848a73a4ed4b1983c55aa5b3e75e6e8a7ec6337"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.100916/kopia-20220704.0.100916-macOS-arm64.tar.gz"
    sha256 "153fd0eff1583963450ca6ce24835c9b3daab889ae382cad25b7a7a78a2fc4ef"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.100916/kopia-20220704.0.100916-linux-x64.tar.gz"
    sha256 "1f2f4cb01acc4f4e8909bb5b53489148de8e666257465c2b66c9c24e58e34e9c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.100916/kopia-20220704.0.100916-linux-arm.tar.gz"
    sha256 "477948eca63ec532575a952bfc969db1bf607f0c044af2fe9dbb7b14f302fbcf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.100916/kopia-20220704.0.100916-linux-arm64.tar.gz"
    sha256 "a02bbbc20f2a6ed16258baee647e343a92ca9084d6a2b287c9ad042ce3e80a11"
  end

  def install
    bin.install "kopia"
  end
end
