# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230919.0.15347"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.15347/kopia-20230919.0.15347-macOS-x64.tar.gz"
    sha256 "7875cfc83db55d28a8c6d9b32dfac3cb04292cfd56f1755b49f3549955678e7b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.15347/kopia-20230919.0.15347-macOS-arm64.tar.gz"
    sha256 "a1db26ce82ff355b17e1186a5cdc0209d49672fca3bd7e146df7bed83913b791"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.15347/kopia-20230919.0.15347-linux-x64.tar.gz"
    sha256 "695b9e84ef105bc01f79fc5600ed638b951a9afe2bdb670d200e24626fba4c6c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.15347/kopia-20230919.0.15347-linux-arm.tar.gz"
    sha256 "1dec4f5c08aea92b1eb14fc389b23568f18b6b98e1308da53f465da556a3bb30"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.15347/kopia-20230919.0.15347-linux-arm64.tar.gz"
    sha256 "1774c30a6dff8a98acbe2dffe853c7940052604642102989fc56ef59a1095294"
  end

  def install
    bin.install "kopia"
  end
end
