# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220413.0.222548"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220413.0.222548/kopia-20220413.0.222548-macOS-x64.tar.gz"
    sha256 "eca4fa3e7b77a1093af0010ab7d64ed8b0dad66f47d0d8d6fa974963b68010ad"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220413.0.222548/kopia-20220413.0.222548-macOS-arm64.tar.gz"
    sha256 "18a49e2107e05d79a87d04e0e4d16438f54a5810348ea44d70abd437b57c393a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220413.0.222548/kopia-20220413.0.222548-linux-x64.tar.gz"
    sha256 "cef787af65327fa2cc101ff2d25f4145466ef1cb297f0b026eb6a03a8e17c8a0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220413.0.222548/kopia-20220413.0.222548-linux-arm.tar.gz"
    sha256 "e45945c6f35990ab8bea3317a7eda536dee1e75f93f06cef3322a11eb1098600"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220413.0.222548/kopia-20220413.0.222548-linux-arm64.tar.gz"
    sha256 "c9401a9f4febb5031e3d6c01f23137c032e12ed5697601dbc79062389ea0306e"
  end

  def install
    bin.install "kopia"
  end
end
