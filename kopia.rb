# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211004.0.224125"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211004.0.224125/kopia-20211004.0.224125-macOS-x64.tar.gz"
    sha256 "7365c881439a27048e459a05d3f40a401feb468a3b285439d060006c7a14977a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211004.0.224125/kopia-20211004.0.224125-macOS-arm64.tar.gz"
    sha256 "e0ba0f7ccc63c97efc500012e73d7ccd40559ca88887be8ba9caa15f367dd5f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211004.0.224125/kopia-20211004.0.224125-linux-x64.tar.gz"
    sha256 "7a9c5b3eb09eb43ddebf106f982a2b715e9a2d9228f89e1e8fbf9b2de1eb33b3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211004.0.224125/kopia-20211004.0.224125-linux-arm.tar.gz"
    sha256 "2afc8d6eb5bfaa6fba0439db3b3465c59a347fcc93f264e3565d239ccf985b26"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211004.0.224125/kopia-20211004.0.224125-linux-arm64.tar.gz"
    sha256 "ee3b4289b21baad34d40a05b2a3f4baf17e2f4c10638b3569e8317c0d0bc6bb0"
  end

  def install
    bin.install "kopia"
  end
end
