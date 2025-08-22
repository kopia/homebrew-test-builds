# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250822.0.40551"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.40551/kopia-20250822.0.40551-macOS-x64.tar.gz"
    sha256 "175e5df8ce14913b3bf01a8f30fa60c9ec8eca583a563ecc6a0d573368b15fec"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.40551/kopia-20250822.0.40551-macOS-arm64.tar.gz"
    sha256 "ef87acbbe25567817b78bda19b9c22becdc6f133e163d72509b1a02a73470dcf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.40551/kopia-20250822.0.40551-linux-x64.tar.gz"
    sha256 "9143deeb50a6cf96934f3b85c34ad808be1943287c029e96d7acb2c65eb79a3a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.40551/kopia-20250822.0.40551-linux-arm.tar.gz"
    sha256 "922c0fe35d1ddadf8ce55f04034e437e21684d52d5ff90dff643d94fe4d01aa7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.40551/kopia-20250822.0.40551-linux-arm64.tar.gz"
    sha256 "293d6c47b6f60fd403826f09a1fe76cb6aa573a2d6c8c4d42966535c5f1b201a"
  end

  def install
    bin.install "kopia"
  end
end
