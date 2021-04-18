# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210418.0.83632"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210418.0.83632/kopia-20210418.0.83632-macOS-x64.tar.gz"
    sha256 "0cdf2f172e7398d18f96d43a220973106d84999884043d8dc097e82f5e356e31"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210418.0.83632/kopia-20210418.0.83632-macOS-arm64.tar.gz"
    sha256 "0dffa4a21912dff606bc3af82e55c358cf05ea2264742d831288a1574b92b903"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210418.0.83632/kopia-20210418.0.83632-linux-x64.tar.gz"
    sha256 "9fba6505ce003e1ddfafd3a070cb1abf9ba6da3b8f88656da0e7f7d3c7548a97"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210418.0.83632/kopia-20210418.0.83632-linux-arm.tar.gz"
    sha256 "239888cc90e09f22ad7b8bb0d88be9bf0c595e5425b6cf0cb791b9dadb3f29ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210418.0.83632/kopia-20210418.0.83632-linux-arm64.tar.gz"
    sha256 "d0c7d7defe85ba7561e5effa87e01ac278b91204f8e0c222bbfee7f5d034d632"
  end

  def install
    bin.install "kopia"
  end
end
