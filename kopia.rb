# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220708.0.235017"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.235017/kopia-20220708.0.235017-macOS-x64.tar.gz"
    sha256 "896346bd09be28bd60383ed1e425ea3d8f8ce938ce19df0e0f9614ea2e6343cc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.235017/kopia-20220708.0.235017-macOS-arm64.tar.gz"
    sha256 "eb0eca5ea7016459390a37f84ae773f4950591b049dc6c4b088cef4f987fb3b8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.235017/kopia-20220708.0.235017-linux-x64.tar.gz"
    sha256 "ae8c63521130d66b9906afcfbdddac7ac9fc0e5aadabe907faccc59b6a90c95c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.235017/kopia-20220708.0.235017-linux-arm.tar.gz"
    sha256 "3454243cc269a94a4ff9a7d5d30de15019d4018ab6c3717813e7d1f3a597e501"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.235017/kopia-20220708.0.235017-linux-arm64.tar.gz"
    sha256 "3256c3f4fafdd4eb24424be51355dd068ed3279e375698aa2703a72233596312"
  end

  def install
    bin.install "kopia"
  end
end
