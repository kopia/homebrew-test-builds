# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210407.0.75643"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.75643/kopia-20210407.0.75643-macOS-x64.tar.gz"
    sha256 "91b82ba226ef356ef5f7fcef39e1fdf6803d31dcb83df4bd0210afed21f9a4f3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.75643/kopia-20210407.0.75643-macOS-arm64.tar.gz"
    sha256 "324e1db77fac6d96e45dac5ca25195091d17a4811b83e943db8b15f9bdc1401e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.75643/kopia-20210407.0.75643-linux-x64.tar.gz"
    sha256 "7201a41fa597879787b4c24bf3eef0c884d85a720a8936e78c947ff0a5a305ae"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.75643/kopia-20210407.0.75643-linux-arm.tar.gz"
    sha256 "f916c6571fbfbee0cd2de89a0c8aee6b0e6bb3a9cac895dd6f54f4703d82cd8c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.75643/kopia-20210407.0.75643-linux-arm64.tar.gz"
    sha256 "5959f91d3a29483ed0c224d00dbe29a6dac33b2e2dd98fda22f61988ff2d9a87"
  end

  def install
    bin.install "kopia"
  end
end
