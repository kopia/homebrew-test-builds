# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250502.0.144750"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.144750/kopia-20250502.0.144750-macOS-x64.tar.gz"
    sha256 "9f39a91ada26e8d874aada7b3f9588a0f681fe52f394be7d12ab5e501f28a4cf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.144750/kopia-20250502.0.144750-macOS-arm64.tar.gz"
    sha256 "e9549774604eee4d61160fdfc7576163c500fd6706f85f737f68d59985227101"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.144750/kopia-20250502.0.144750-linux-x64.tar.gz"
    sha256 "f9dfb5d2378c52b941bd337fe441e8d97c404384b9b25f0834a8f3631505c207"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.144750/kopia-20250502.0.144750-linux-arm.tar.gz"
    sha256 "7bdc19f354f50c893e4f4b134805b93a11b130a54fc02819772fb255b07156be"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.144750/kopia-20250502.0.144750-linux-arm64.tar.gz"
    sha256 "b7e4afb58c00a205bde4e62791f3417b7f147bf97b7b3c7266302cec8ecf68d3"
  end

  def install
    bin.install "kopia"
  end
end
