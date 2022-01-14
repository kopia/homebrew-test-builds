# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220114.0.80651"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220114.0.80651/kopia-20220114.0.80651-macOS-x64.tar.gz"
    sha256 "7294a7983e8911fd22d6dce2349a3188c25428817daf499ee24db2d6deb408c5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220114.0.80651/kopia-20220114.0.80651-macOS-arm64.tar.gz"
    sha256 "eda23fc92bdba9bb7ad89de8482be8812dd588ce46f41314334f67dd2d0d76a6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220114.0.80651/kopia-20220114.0.80651-linux-x64.tar.gz"
    sha256 "8fe14c4175693153c3379b8378d050cccc187008fdda3572ac17e85aee610f20"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220114.0.80651/kopia-20220114.0.80651-linux-arm.tar.gz"
    sha256 "88cbc460ff6baebe9fa0bd4bd04efef748a0a352ec5e096b230f3294ea51f717"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220114.0.80651/kopia-20220114.0.80651-linux-arm64.tar.gz"
    sha256 "091a88a85b91bd6cc23a7ffacc23b74e049a4999087b6cfa8cbae950ac454492"
  end

  def install
    bin.install "kopia"
  end
end
