# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220603.0.104738"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.104738/kopia-20220603.0.104738-macOS-x64.tar.gz"
    sha256 "4b898e4bbbe3924b73c9d73b546b2d021d546932e5506f8cb3b92c8bcbb4df20"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.104738/kopia-20220603.0.104738-macOS-arm64.tar.gz"
    sha256 "b8020b0c28e43477f4881a64c31b94b2305147d7296004515fe8d081d9ea5b06"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.104738/kopia-20220603.0.104738-linux-x64.tar.gz"
    sha256 "17790d9ae9d4aeaff53dc95a477e72f287895b6f5373644309d0522e6c9e23c9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.104738/kopia-20220603.0.104738-linux-arm.tar.gz"
    sha256 "de6330459a9a4a57b7cd1d0d0696edfb2f3347a186d5173c6c490abb8e1446e9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.104738/kopia-20220603.0.104738-linux-arm64.tar.gz"
    sha256 "f37132ac12e8d9dac32dcf3ae5d89fa884c009ad530b426852c50ecdc063bf6d"
  end

  def install
    bin.install "kopia"
  end
end
