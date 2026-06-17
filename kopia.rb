# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260617.0.61324"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.61324/kopia-20260617.0.61324-macOS-x64.tar.gz"
    sha256 "1d8fdbe363c4556cbd9efd44de1a0e0bd59074c39130c61c22726cff91fac08c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.61324/kopia-20260617.0.61324-macOS-arm64.tar.gz"
    sha256 "e4d59c55de20eec4fe41376e4448594e2676fda1fff7e9a176d2c75b778580fb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.61324/kopia-20260617.0.61324-linux-x64.tar.gz"
    sha256 "73e27727282e58b4c3cd04d387fa2e6f2567f73a1a99767ece2243ad9dd751ae"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.61324/kopia-20260617.0.61324-linux-arm.tar.gz"
    sha256 "93084f73a9f3aeacb1e47d288a84162e9db1f0763975a882f8606ef5306f27a4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.61324/kopia-20260617.0.61324-linux-arm64.tar.gz"
    sha256 "aa85589f9c88346a06856d14ba32281fe83e93ba7c0b538a894bf109c30e8dc8"
  end

  def install
    bin.install "kopia"
  end
end
