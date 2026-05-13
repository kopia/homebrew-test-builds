# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260513.0.233931"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260513.0.233931/kopia-20260513.0.233931-macOS-x64.tar.gz"
    sha256 "f2234fbaea4a8ab5d3d97a77cee78c8f36b1ba89588148866bf9e2e0855357ca"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260513.0.233931/kopia-20260513.0.233931-macOS-arm64.tar.gz"
    sha256 "60333c9bc87c7b037dfe258814043775f04096778410374827b171a84b9884fa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260513.0.233931/kopia-20260513.0.233931-linux-x64.tar.gz"
    sha256 "b8b4e882a25c19a7c1e1bff0b55c26ff71955707d17156f3628b102df2b40274"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260513.0.233931/kopia-20260513.0.233931-linux-arm.tar.gz"
    sha256 "5b93d4a442993fe58a208e07af0c7104f944a76b45cb1a8236fbe3cbeac63b31"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260513.0.233931/kopia-20260513.0.233931-linux-arm64.tar.gz"
    sha256 "a20fe67fb542470131a3e8da2a8a7d0ec0dac03743d44d307675d0a13287a8cf"
  end

  def install
    bin.install "kopia"
  end
end
