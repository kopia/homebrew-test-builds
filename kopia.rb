# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220217.0.220744"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220217.0.220744/kopia-20220217.0.220744-macOS-x64.tar.gz"
    sha256 "776a3537b8e947b53e73b42828009b2a2057621bba293f687b9a855a6b4b9499"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220217.0.220744/kopia-20220217.0.220744-macOS-arm64.tar.gz"
    sha256 "7bec5c5f2069b77eda5018d929161c9798474a2f222132d30642e4f3e9b01abc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220217.0.220744/kopia-20220217.0.220744-linux-x64.tar.gz"
    sha256 "90d105dc55c0e722db7dbe57947d2522e74b24828c39257a8d4cf7e9a5542ddb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220217.0.220744/kopia-20220217.0.220744-linux-arm.tar.gz"
    sha256 "40efd19ef3ae9acbf7cf0f0da466caa94e7e485140c0dde89c05df661cb6f73c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220217.0.220744/kopia-20220217.0.220744-linux-arm64.tar.gz"
    sha256 "db7f2b862d08c633b2c6da4f4c1ffff105a4f468cfd08755e1323f517b141230"
  end

  def install
    bin.install "kopia"
  end
end
