# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210522.0.111722"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.111722/kopia-20210522.0.111722-macOS-x64.tar.gz"
    sha256 "d67039e1b9c1fcaad40f2b1992c5a21e4754a1c4c08dab38fe7d2e6b2b596d4c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.111722/kopia-20210522.0.111722-macOS-arm64.tar.gz"
    sha256 "5a27c9069280fbc2a45c467af83d761a0fbe329d682f58884d09f3e504d27927"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.111722/kopia-20210522.0.111722-linux-x64.tar.gz"
    sha256 "12f4090a87f722607e0e6823746b48bacd3acc8072c76171aa18630d1eec6069"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.111722/kopia-20210522.0.111722-linux-arm.tar.gz"
    sha256 "b4e29786fe564781fc5f6e1798667671909b12aa86ec5111d08459c569056a06"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.111722/kopia-20210522.0.111722-linux-arm64.tar.gz"
    sha256 "891661e4e26e51b8a2f2a5efb183c7502cf18230b3a46042848ce302a1106e11"
  end

  def install
    bin.install "kopia"
  end
end
