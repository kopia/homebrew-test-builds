# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210413.0.124504"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.124504/kopia-20210413.0.124504-macOS-x64.tar.gz"
    sha256 "7d3d7c64f34d6d143792d39f82233574292fd9ea9fceb7c47500a8d0504a7768"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.124504/kopia-20210413.0.124504-macOS-arm64.tar.gz"
    sha256 "9887e59494dfc48ab1019f7c545a67e3f4c83c8b160e4e8f9bdfff5c1b6bbf39"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.124504/kopia-20210413.0.124504-linux-x64.tar.gz"
    sha256 "8fc3791703d1fdbc5a8f2afaec0436b08b85a2520674b5e5d8948496596badce"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.124504/kopia-20210413.0.124504-linux-arm.tar.gz"
    sha256 "5182c2060fe10b31e902b7e2088ee8139fb1313226a2eabbd7177fa75ed81bcb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.124504/kopia-20210413.0.124504-linux-arm64.tar.gz"
    sha256 "902c6c077911058ca33458abffb275b24ef1c2231286ac6d152c3a31930bee4f"
  end

  def install
    bin.install "kopia"
  end
end
