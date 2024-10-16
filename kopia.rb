# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241016.0.45814"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241016.0.45814/kopia-20241016.0.45814-macOS-x64.tar.gz"
    sha256 "9855e425553c9190d21076f150bc768fe403ee888d5dfd668777a79133ab18f3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241016.0.45814/kopia-20241016.0.45814-macOS-arm64.tar.gz"
    sha256 "4cc2d0b902dbc4209aa7c082c610b332cbad282c49e1e5d7ef26b7f7e117f446"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241016.0.45814/kopia-20241016.0.45814-linux-x64.tar.gz"
    sha256 "bed7796a54beaa60113085a5cbbd4c0760741a7165ee2766cdfc6ebadd51e843"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241016.0.45814/kopia-20241016.0.45814-linux-arm.tar.gz"
    sha256 "fb44b697b038e54abdca8feeb6db193e5a19cf7737d91a5a7a421ff22003c994"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241016.0.45814/kopia-20241016.0.45814-linux-arm64.tar.gz"
    sha256 "a7dee0fb2ea0dcd97c85932009a4e4e9d840fb913b13fa82d6dcf364e41b12c5"
  end

  def install
    bin.install "kopia"
  end
end
