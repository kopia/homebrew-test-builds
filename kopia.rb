# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231219.0.231042"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231219.0.231042/kopia-20231219.0.231042-macOS-x64.tar.gz"
    sha256 "deae9fed96e7e4ed74038eacd56d3cfca7eb8cfbf07fd465d3e0d59f066583f6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231219.0.231042/kopia-20231219.0.231042-macOS-arm64.tar.gz"
    sha256 "6c6423f0bb7b5957489b5cae55cc8be4ae1e6f829d7d9af9a9919f5540a1a4b5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231219.0.231042/kopia-20231219.0.231042-linux-x64.tar.gz"
    sha256 "9c04a34986aabcf91f2c1d0dd1b079a4f13fc5f607c2f0ef0c6acfd13222daa8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231219.0.231042/kopia-20231219.0.231042-linux-arm.tar.gz"
    sha256 "909a09cdfdb5800a9568bcf5cb6a8085d3706812903304c77e5a5164ccd28a21"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231219.0.231042/kopia-20231219.0.231042-linux-arm64.tar.gz"
    sha256 "41453a59aa229da45f13624925cff4d5d031c88ae5b688de635aa454426b37bc"
  end

  def install
    bin.install "kopia"
  end
end
