# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220330.0.151649"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220330.0.151649/kopia-20220330.0.151649-macOS-x64.tar.gz"
    sha256 "8344dd0c4a4c87897e9fad2a41cb6fafde62984618966ee0b1b0dd87d85b560a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220330.0.151649/kopia-20220330.0.151649-macOS-arm64.tar.gz"
    sha256 "5e0e921e0db83c89ddffacdd8916875f6c0ffadeac7204eb48775df3f206591d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220330.0.151649/kopia-20220330.0.151649-linux-x64.tar.gz"
    sha256 "4b95cad09a91b9f9ec1fdcdb9d45a3455afe7f9dc7e01888336f6b69e5eb2ba2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220330.0.151649/kopia-20220330.0.151649-linux-arm.tar.gz"
    sha256 "2b9ca44d84581f5d4e0b624ae26db4c6ea84aa54a2a4a0658f6896bff44ad8b8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220330.0.151649/kopia-20220330.0.151649-linux-arm64.tar.gz"
    sha256 "380f0b902e207e52e5baefb8d7a72a50efedcba508636369ce883f90bfd4f18b"
  end

  def install
    bin.install "kopia"
  end
end
