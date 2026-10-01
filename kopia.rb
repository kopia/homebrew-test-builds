# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261001.0.33808"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.33808/kopia-20261001.0.33808-macOS-x64.tar.gz"
    sha256 "ab912321f6af0aea6a3e5abac51505cc41fecbca6676aae7b48bb1c8af9f536f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.33808/kopia-20261001.0.33808-macOS-arm64.tar.gz"
    sha256 "ed2824c36d5cbaa1c71742525f2a21ac7569345075a255d62f399d7b407659a2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.33808/kopia-20261001.0.33808-linux-x64.tar.gz"
    sha256 "4b8d7f410d903c2509163a3014c3eef197c6e5dd53ffd94d65190ed783e12de8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.33808/kopia-20261001.0.33808-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.33808/kopia-20261001.0.33808-linux-arm64.tar.gz"
    sha256 "d572fbae0c8f61936f3d003df1afb08b29906f6f5224efa5b8186e6ff967bc1b"
  end

  def install
    bin.install "kopia"
  end
end
