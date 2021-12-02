# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211201.0.180042"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180042/kopia-20211201.0.180042-macOS-x64.tar.gz"
    sha256 "544af79fe6ee411b292e7e5bf822ce04d535a744a3d5b5865d147e2f8c924f88"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180042/kopia-20211201.0.180042-macOS-arm64.tar.gz"
    sha256 "543d6b65116f799586a80f3ddf551c6b12405c297b669986c3c293a523069317"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180042/kopia-20211201.0.180042-linux-x64.tar.gz"
    sha256 "6461053f9fe11568fd18534cdb79cc2c42ea249c44ad8ef3c3b6d940408f3412"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180042/kopia-20211201.0.180042-linux-arm.tar.gz"
    sha256 "eb8409d54ce277c7b7cfcac9722e0125dfaec49e24aa10ec7c822319bbabd49a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180042/kopia-20211201.0.180042-linux-arm64.tar.gz"
    sha256 "abe930cd0b4542f72932489efcf24ed5e23df4f0a5976b03a08a959ed39a516f"
  end

  def install
    bin.install "kopia"
  end
end
