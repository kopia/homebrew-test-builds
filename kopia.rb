# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211201.0.180027"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180027/kopia-20211201.0.180027-macOS-x64.tar.gz"
    sha256 "cb8b3e09e0dd00662c3de97fc23dda34eb6fe86071a3c218c12f02c478e68ad1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180027/kopia-20211201.0.180027-macOS-arm64.tar.gz"
    sha256 "39283fb9699f50f6adecb2a05abad0f4f25f736731f6418e0c211760579bb62f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180027/kopia-20211201.0.180027-linux-x64.tar.gz"
    sha256 "fee5259923efea1a97a83cf00c4952ec2bdf6f3e76da509ad7967d5219e52324"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180027/kopia-20211201.0.180027-linux-arm.tar.gz"
    sha256 "e024eec7bfb56554f7932666987e1386eb00748a57c4ad6b8cd92dea60046519"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180027/kopia-20211201.0.180027-linux-arm64.tar.gz"
    sha256 "64b9a86319d70ae1c5b56ae1fbd87f3f689432b07735c986731069fb9b595868"
  end

  def install
    bin.install "kopia"
  end
end
