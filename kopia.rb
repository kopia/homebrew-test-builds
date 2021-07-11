# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210710.0.193708"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.193708/kopia-20210710.0.193708-macOS-x64.tar.gz"
    sha256 "2d8057062af2f0b7e7be5789522ffd105e54d3a3ee0374c7078f33da9f6ccf53"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.193708/kopia-20210710.0.193708-macOS-arm64.tar.gz"
    sha256 "65727cce87208343ac4e25a2895c79eb2d0969fcc85a08ac811e149fdf5c24a7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.193708/kopia-20210710.0.193708-linux-x64.tar.gz"
    sha256 "ec5ff870b42a295386eb2de5fc3765bfb40c3a554f75f29993e5bfd1591adfbc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.193708/kopia-20210710.0.193708-linux-arm.tar.gz"
    sha256 "2215b651ce410379023a020094f575e34667acb84de42a53c36450c98ec5c303"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.193708/kopia-20210710.0.193708-linux-arm64.tar.gz"
    sha256 "cb70b5197830988d6f8f649b0bc16f4fe0315328739f1fefc985cb8e89d7c813"
  end

  def install
    bin.install "kopia"
  end
end
