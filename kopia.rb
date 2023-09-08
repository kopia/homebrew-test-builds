# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230907.0.202725"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230907.0.202725/kopia-20230907.0.202725-macOS-x64.tar.gz"
    sha256 "0db69364e23aea0862e8e68c3459fc825de850bbe9443c5705d833d256479d81"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230907.0.202725/kopia-20230907.0.202725-macOS-arm64.tar.gz"
    sha256 "02a7853dc793f06dcb1a642ae52890181d223a83db079dbd7e3d12240ec0bdb6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230907.0.202725/kopia-20230907.0.202725-linux-x64.tar.gz"
    sha256 "659f8ddec0fb839675ca6949d4276b3155b149742c6d22ba7b1660b12bb1736c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230907.0.202725/kopia-20230907.0.202725-linux-arm.tar.gz"
    sha256 "be06010ccff0b6c3df47de9971c0b8110275e8d1772532eb8758b8ec2482a95b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230907.0.202725/kopia-20230907.0.202725-linux-arm64.tar.gz"
    sha256 "2dcff67244c2e6e2c57969dd73e1a7121c4967ad4cec605712220f47e64417b9"
  end

  def install
    bin.install "kopia"
  end
end
