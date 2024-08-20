# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240819.0.213321"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240819.0.213321/kopia-20240819.0.213321-macOS-x64.tar.gz"
    sha256 "6a1031a3a76acd017f21a7c1c81126dcc1b235ba4f1701b660995c0eec95eae4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240819.0.213321/kopia-20240819.0.213321-macOS-arm64.tar.gz"
    sha256 "783e42c77b67ce567f57bcebf1f42215abbc7210dfce5518f90e817d117d817b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240819.0.213321/kopia-20240819.0.213321-linux-x64.tar.gz"
    sha256 "15bdaa785f97b3a3c5887dc8472954fb7637daafa1c0e9a8d6dad7834140f13e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240819.0.213321/kopia-20240819.0.213321-linux-arm.tar.gz"
    sha256 "64dfbe49ded4317ad287edcdf35501b0a478ff53a26b425f32b129e9c22216e7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240819.0.213321/kopia-20240819.0.213321-linux-arm64.tar.gz"
    sha256 "ca76f837d198db7ca76fb6d5d8d6381b66392b7e728a5ad2b0a67e4bfb817f19"
  end

  def install
    bin.install "kopia"
  end
end
