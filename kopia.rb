# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210521.0.235914"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210521.0.235914/kopia-20210521.0.235914-macOS-x64.tar.gz"
    sha256 "19ca207d8373325a59fecca645d3aa2e25401cf3da57f644b036ff621037a463"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210521.0.235914/kopia-20210521.0.235914-macOS-arm64.tar.gz"
    sha256 "3b5e5a93c7f80758d6fd22f165fb835aa7e615e5ae89930f8164f5762d34f9ac"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210521.0.235914/kopia-20210521.0.235914-linux-x64.tar.gz"
    sha256 "07be017b49f6c96f2ec9de48a5a82d4acd4690450347a27771a0d516d4fa3728"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210521.0.235914/kopia-20210521.0.235914-linux-arm.tar.gz"
    sha256 "eaad59d1245da9ab3a40c626e2bf9ceaee5889251285933b0fa0416988f2e0ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210521.0.235914/kopia-20210521.0.235914-linux-arm64.tar.gz"
    sha256 "db2a30da7b3b2829c54df6a3bd3da63de1d0ac4937d2ae71e30745d826b71f29"
  end

  def install
    bin.install "kopia"
  end
end
