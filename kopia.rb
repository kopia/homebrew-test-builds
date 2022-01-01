# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220101.0.130747"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.130747/kopia-20220101.0.130747-macOS-x64.tar.gz"
    sha256 "f197429d4889f09cfeb0f56c06cf1bd5febe271001f59cfc926362055fc255dc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.130747/kopia-20220101.0.130747-macOS-arm64.tar.gz"
    sha256 "bb84341b38765a9778201b31aa239794e01cf037595ee4151841b0e3149d96ca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.130747/kopia-20220101.0.130747-linux-x64.tar.gz"
    sha256 "415f2b7447f859c02e4b598f71bec226990092455a16214ecd091c4f7d6ae83d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.130747/kopia-20220101.0.130747-linux-arm.tar.gz"
    sha256 "402dfb3d575ee1050816680c93e8c1d546b98cbd25d6887b751b0e84752b582e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.130747/kopia-20220101.0.130747-linux-arm64.tar.gz"
    sha256 "655bbd77a9e11f4013d3793e184874e0033f84bd122e7a69424d2d0c63ae5652"
  end

  def install
    bin.install "kopia"
  end
end
