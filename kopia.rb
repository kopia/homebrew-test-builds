# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220523.0.151625"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220523.0.151625/kopia-20220523.0.151625-macOS-x64.tar.gz"
    sha256 "26547459994c0b595daa315c272d5e21b1044f2ef577fb1d5d89245b163d5670"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220523.0.151625/kopia-20220523.0.151625-macOS-arm64.tar.gz"
    sha256 "383bb20aa20dd0cc546848e3472ac5ce49b70f8608ef2de20c4096bb34082f59"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220523.0.151625/kopia-20220523.0.151625-linux-x64.tar.gz"
    sha256 "8ce73cdd618a0782fde6bb6db340031db66d4b61e7a82e0461031473084e2634"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220523.0.151625/kopia-20220523.0.151625-linux-arm.tar.gz"
    sha256 "2a637d7d4277b26ab42d9f399dc9f08b5aa50031d9a58ae9771cf0f449929536"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220523.0.151625/kopia-20220523.0.151625-linux-arm64.tar.gz"
    sha256 "d5d8781f6b519b95396c61fc29971577b5928f50ef39937a804859e7b240ce5a"
  end

  def install
    bin.install "kopia"
  end
end
