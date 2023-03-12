# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230312.0.60514"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.60514/kopia-20230312.0.60514-macOS-x64.tar.gz"
    sha256 "5d5f05b167e405159f863da96970ffe1994aad87e91e6283e8a1dac9a3985e33"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.60514/kopia-20230312.0.60514-macOS-arm64.tar.gz"
    sha256 "c4d4c8b8423dfd941cc40e6c9929b3d905672bd53e6db33effd5b6ab16cf21c2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.60514/kopia-20230312.0.60514-linux-x64.tar.gz"
    sha256 "023ed18336b8baefeb6025d06efb2c8ffaa0aaaf270c113fa1d70c99a06d11ee"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.60514/kopia-20230312.0.60514-linux-arm.tar.gz"
    sha256 "e1abb0daae8189bea660a02cb87114adbafd3be4d5174308f89350aaa9007e75"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.60514/kopia-20230312.0.60514-linux-arm64.tar.gz"
    sha256 "ccb8b9318e84d12578559a2911f8e3184238ab08c780daa33fdd092316f59094"
  end

  def install
    bin.install "kopia"
  end
end
