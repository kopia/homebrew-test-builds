# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210820.0.84510"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210820.0.84510/kopia-20210820.0.84510-macOS-x64.tar.gz"
    sha256 "57d1f0ec0735ac04c7454f30d3ed4a33c8eb816f9c9f7a3c97bb1f6a81d3924a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210820.0.84510/kopia-20210820.0.84510-macOS-arm64.tar.gz"
    sha256 "73712cbc7613a5435bbe516e9fd602eea815f72c0735c82b573945bc85694d50"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210820.0.84510/kopia-20210820.0.84510-linux-x64.tar.gz"
    sha256 "817bfd24a3e2855837b3ad8ba487006da5359d9be1a04cc2681f73465dfd8301"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210820.0.84510/kopia-20210820.0.84510-linux-arm.tar.gz"
    sha256 "cd3804a3aafcffec1f7891bd9f4fbc46ea5c2af8fd022862325f0df239efd277"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210820.0.84510/kopia-20210820.0.84510-linux-arm64.tar.gz"
    sha256 "8a9e69223c96a1899f03511d17ead492a79f7806738465453f30b50538172d23"
  end

  def install
    bin.install "kopia"
  end
end
