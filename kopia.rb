# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240823.0.221124"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.221124/kopia-20240823.0.221124-macOS-x64.tar.gz"
    sha256 "cca1992a4d634f985d22b78e152ffe3525e1e98c0165557abe9f98f7eeb8aec2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.221124/kopia-20240823.0.221124-macOS-arm64.tar.gz"
    sha256 "bd9112eb259c5249cff19ac62dd3333caa3969d69596dc61d0f4c733f033096a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.221124/kopia-20240823.0.221124-linux-x64.tar.gz"
    sha256 "0a4cd79de1b7a58dc5eeefeb7f76a2d5258c4585b75e9f9233266a694a0255c7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.221124/kopia-20240823.0.221124-linux-arm.tar.gz"
    sha256 "98bb09bf3af519119462cadd3b5604e6db81d1ea015e21c696004defb0670104"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.221124/kopia-20240823.0.221124-linux-arm64.tar.gz"
    sha256 "289565aa5a08b3f47406cfc9fdfd570991fbfb8d0a90b9ae3383143848887ccb"
  end

  def install
    bin.install "kopia"
  end
end
