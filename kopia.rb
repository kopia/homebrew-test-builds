# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220703.0.170225"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.170225/kopia-20220703.0.170225-macOS-x64.tar.gz"
    sha256 "4023e7b7c73eee271ef1fabda3af9ee55e74cba0c9e69229d9f8afea2f1d37ab"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.170225/kopia-20220703.0.170225-macOS-arm64.tar.gz"
    sha256 "56c358cd2c5bea154849c41e6bc2d6d0508e6e15714547cafdcc10cfb3ae3f05"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.170225/kopia-20220703.0.170225-linux-x64.tar.gz"
    sha256 "b542280a8069d12c4079063463ff3827cde83310fc90c8d62a88e6db7e35f0e4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.170225/kopia-20220703.0.170225-linux-arm.tar.gz"
    sha256 "ee5c7dfb0296ee1cd7519c032e877ae6ed0e51189dbc77a8b087bffc29cba56a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.170225/kopia-20220703.0.170225-linux-arm64.tar.gz"
    sha256 "53cd1be83ddfc10546cb1e7aa02516df1c100e396f9bd4a72d3ca788907b1875"
  end

  def install
    bin.install "kopia"
  end
end
