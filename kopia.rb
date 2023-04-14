# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230413.0.222547"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.222547/kopia-20230413.0.222547-macOS-x64.tar.gz"
    sha256 "73adb376992a4c32caca7d4cc5bc088346928a9c12fa63f2c89574f7095c032a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.222547/kopia-20230413.0.222547-macOS-arm64.tar.gz"
    sha256 "d119cb80c0a53abb2b94757f2e233c082033d240c5954d13d117d5d9b9df213c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.222547/kopia-20230413.0.222547-linux-x64.tar.gz"
    sha256 "68e3fe564de2e1edb6a95a5c56862d07cbe7dedba132853197e83eed7a3318b8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.222547/kopia-20230413.0.222547-linux-arm.tar.gz"
    sha256 "75675cd31fb6354f636370000639ed49952aa16fa4c8d9b900cf130e2684ce5b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.222547/kopia-20230413.0.222547-linux-arm64.tar.gz"
    sha256 "00118c947e8403779d021b956feec45abf3505c0b221a902cc7bc2300455e559"
  end

  def install
    bin.install "kopia"
  end
end
