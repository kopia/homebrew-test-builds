# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230417.0.232624"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230417.0.232624/kopia-20230417.0.232624-macOS-x64.tar.gz"
    sha256 "8fc7e19c497d1f9c8570da7f9f783ce3dc6a73c6ccc1ef51094a72a86a70aead"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230417.0.232624/kopia-20230417.0.232624-macOS-arm64.tar.gz"
    sha256 "4762832823b8c36a8d68787094171a34de145c3f81e499dd4563389751c6f682"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230417.0.232624/kopia-20230417.0.232624-linux-x64.tar.gz"
    sha256 "5132409dfb75a68c93a620f47c9aefd2d057da4721cb6dc586f89bfec4ffbf43"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230417.0.232624/kopia-20230417.0.232624-linux-arm.tar.gz"
    sha256 "a3891960d4b4f33de30c38bdde77d4d0c987ee7b73908001ca81d1e9df697b03"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230417.0.232624/kopia-20230417.0.232624-linux-arm64.tar.gz"
    sha256 "23ce6b76c191ae8fd900cce07dde44e84aaf5729ec521517b7187ba5074a33f6"
  end

  def install
    bin.install "kopia"
  end
end
