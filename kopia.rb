# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220129.0.13445"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.13445/kopia-20220129.0.13445-macOS-x64.tar.gz"
    sha256 "25d645d00f3f4306617f41a434f606faf29aa13b242723158ebe581e5bd6cbe7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.13445/kopia-20220129.0.13445-macOS-arm64.tar.gz"
    sha256 "58a7f71236050393b63452c948c29b7221e7edbe0abb6d6cbbf3b9a633a50503"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.13445/kopia-20220129.0.13445-linux-x64.tar.gz"
    sha256 "b136d82507ec3fd93bdbc807e3b27bf70ad8b1dece66812bca2b3048bfd71338"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.13445/kopia-20220129.0.13445-linux-arm.tar.gz"
    sha256 "6d88333f956b0e4843c336f4fb58e38aaa698735a63fd32a3091f9e5dd3241ac"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.13445/kopia-20220129.0.13445-linux-arm64.tar.gz"
    sha256 "5e1c9d0ce56a3bd1c793b4ae0a11498d984f5387fddd58f5de4ffb2e21c4a070"
  end

  def install
    bin.install "kopia"
  end
end
