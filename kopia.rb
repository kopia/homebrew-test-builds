# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251112.0.5310"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.5310/kopia-20251112.0.5310-macOS-x64.tar.gz"
    sha256 "4d32f92d7ce0696e5f3a678cf6004ecec71cc2b42071fa70db3c9077459c1541"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.5310/kopia-20251112.0.5310-macOS-arm64.tar.gz"
    sha256 "fa37f6d895bfb0d07ebf6f1ee213ee028577152c66042cd7b022663ee700115d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.5310/kopia-20251112.0.5310-linux-x64.tar.gz"
    sha256 "b65ea8651eb947289c8259cd403bfcfb94f760ff917f526fdebae5d6f4ce5862"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.5310/kopia-20251112.0.5310-linux-arm.tar.gz"
    sha256 "deb0537ef0aa635ddf9f78cfdd269a2e46c66144a953a0c7c96197a35d9061e2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.5310/kopia-20251112.0.5310-linux-arm64.tar.gz"
    sha256 "6448575d146e051d90bc6a59a0f1ba9b0c52c74733aa45e339b91e724e143f4e"
  end

  def install
    bin.install "kopia"
  end
end
