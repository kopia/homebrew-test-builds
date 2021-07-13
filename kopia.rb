# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210712.0.184525"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210712.0.184525/kopia-20210712.0.184525-macOS-x64.tar.gz"
    sha256 "ee4151390677344ee9237523bac5d0c4ef821c915107863009e8e406d5f38626"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210712.0.184525/kopia-20210712.0.184525-macOS-arm64.tar.gz"
    sha256 "97b6b4d99380c8f4a497fd6052c59e93feaed95be71e6585b2bae54eb77842a0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210712.0.184525/kopia-20210712.0.184525-linux-x64.tar.gz"
    sha256 "a1d0d84afe6a25a3817340a39c2303ee823e11ff6b4e21cd24f3b52e22d86efd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210712.0.184525/kopia-20210712.0.184525-linux-arm.tar.gz"
    sha256 "b8e76b6dd4601ade54e19059f652438798a9c39442f9c7905f1affbbe31953a0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210712.0.184525/kopia-20210712.0.184525-linux-arm64.tar.gz"
    sha256 "32f88bc095f8c74edb6d5a943b88d4a9cd71ffc1bbe3da57d705f631acb7066a"
  end

  def install
    bin.install "kopia"
  end
end
