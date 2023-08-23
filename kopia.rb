# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230822.0.194103"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230822.0.194103/kopia-20230822.0.194103-macOS-x64.tar.gz"
    sha256 "d1c6db6eb0c0ef22e764cdf192d37f64395dc8074d4aa5642bfea3d66abe3a37"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230822.0.194103/kopia-20230822.0.194103-macOS-arm64.tar.gz"
    sha256 "c4cbf2434fe8df6553958469d338d4d0e25617de73252286a8ee09582e5726af"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230822.0.194103/kopia-20230822.0.194103-linux-x64.tar.gz"
    sha256 "42d5505958da2d67613a0577568ff32ec860a7ab5fff4edafe3f2cd24db62da5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230822.0.194103/kopia-20230822.0.194103-linux-arm.tar.gz"
    sha256 "9aa080ec56977964242bb226267dfafde605f4372eebb9c6050eebd5ebafeed4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230822.0.194103/kopia-20230822.0.194103-linux-arm64.tar.gz"
    sha256 "923b6c739d86e0c7f83b8d0d20cf8161d0410d8303d42d05b170b5035a69daa6"
  end

  def install
    bin.install "kopia"
  end
end
