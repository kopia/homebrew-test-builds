# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230413.0.185816"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.185816/kopia-20230413.0.185816-macOS-x64.tar.gz"
    sha256 "7e9e727114ff1e33bb3ad195e0ae95c2605fcd470af62703a300d2c31ab641f7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.185816/kopia-20230413.0.185816-macOS-arm64.tar.gz"
    sha256 "05dd199b1f2a93943cc21ded4ba22172b14e78d799c1db8727cfba2f4deddc16"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.185816/kopia-20230413.0.185816-linux-x64.tar.gz"
    sha256 "caf3e106322a5d23664aeae6d66029413461d5d6a5da3efd90b8a2fa8beb9590"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.185816/kopia-20230413.0.185816-linux-arm.tar.gz"
    sha256 "e281d6347b33e4f1875ec314ce423d3ca3f21d4abff602ff0153624091277d0c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.185816/kopia-20230413.0.185816-linux-arm64.tar.gz"
    sha256 "ed355a8bf8495fa5dc2253bdde0c85767782bc745ae3968da6b43ab3dabfbd4e"
  end

  def install
    bin.install "kopia"
  end
end
