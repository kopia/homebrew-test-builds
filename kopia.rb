# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210807.0.91829"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.91829/kopia-20210807.0.91829-macOS-x64.tar.gz"
    sha256 "888cc1d7dbb61f640eb9a0dd71bd77ccdf8d3e065a9c2bcfb05bab4f9f93eecb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.91829/kopia-20210807.0.91829-macOS-arm64.tar.gz"
    sha256 "528f346c1a3fdfc4146b8d73089a0205964be6f89ba60aca869662032cb89cc2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.91829/kopia-20210807.0.91829-linux-x64.tar.gz"
    sha256 "aff4e2e7d79702755dbb41abb339ce9f46daabd66ea40c3e5aec6e9fa96e86c8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.91829/kopia-20210807.0.91829-linux-arm.tar.gz"
    sha256 "6c2ee05430140bac71dea4d4f22b9af8ca39add10758a972cebf09bc771f9fee"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.91829/kopia-20210807.0.91829-linux-arm64.tar.gz"
    sha256 "274cae11cd94597819464627d157d05bba83afdbc5b9081cca135559dc35b8a4"
  end

  def install
    bin.install "kopia"
  end
end
