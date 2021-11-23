# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211123.0.72119"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211123.0.72119/kopia-20211123.0.72119-macOS-x64.tar.gz"
    sha256 "e893891deef94fb109f295325bbfbb73ef59867c6dfae325d160eb518fd1f23a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211123.0.72119/kopia-20211123.0.72119-macOS-arm64.tar.gz"
    sha256 "c67ef86b20bc60b8de3e9535597ca48f81d8c64ae0653d2bf4085d09ec24641d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211123.0.72119/kopia-20211123.0.72119-linux-x64.tar.gz"
    sha256 "a19e2799118c671fbaddccc01f4547149a3a5e2b661f23691329f40801d1f06d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211123.0.72119/kopia-20211123.0.72119-linux-arm.tar.gz"
    sha256 "e7d15e83a707b71ce8f41e705b5c4bb086182938b7aec3395885d2c6e178a81b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211123.0.72119/kopia-20211123.0.72119-linux-arm64.tar.gz"
    sha256 "a0af7eb0568609ad86a050fa4f9ed93c1a617c996e00638d355e7cfc8463ecd4"
  end

  def install
    bin.install "kopia"
  end
end
