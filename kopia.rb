# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250413.0.11847"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250413.0.11847/kopia-20250413.0.11847-macOS-x64.tar.gz"
    sha256 "5f57b6408ba649eaf1872c8e0a7bd9d94012b2633d1abfa78df008eecc73a62e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250413.0.11847/kopia-20250413.0.11847-macOS-arm64.tar.gz"
    sha256 "04cb88ec688236fd9dfd0a72ccaf256bc22212e4620a28a310b3cf3774cd797a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250413.0.11847/kopia-20250413.0.11847-linux-x64.tar.gz"
    sha256 "6b881b52e8aabcc16324cecb850a3f9850355f5320d06602668c839baafdf65e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250413.0.11847/kopia-20250413.0.11847-linux-arm.tar.gz"
    sha256 "81754a9454cf0be6bf46a9183f25535f0cf3bd4264c312121a48bed256698755"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250413.0.11847/kopia-20250413.0.11847-linux-arm64.tar.gz"
    sha256 "a8a98eb7debf1b1159fc89be8623aacd7f78ff38912336286f264ee92e22e915"
  end

  def install
    bin.install "kopia"
  end
end
