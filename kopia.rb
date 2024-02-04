# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240203.0.214441"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240203.0.214441/kopia-20240203.0.214441-macOS-x64.tar.gz"
    sha256 "8f257206b94ed5df0737864102cc5914375b0540fddaa5da876887889bbc9cf1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240203.0.214441/kopia-20240203.0.214441-macOS-arm64.tar.gz"
    sha256 "c24ce6697cb564f839082ee8de262d34143273abacd0595702a66ea253d39f2c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240203.0.214441/kopia-20240203.0.214441-linux-x64.tar.gz"
    sha256 "75700199b00788212ff277e8537f431b34036a92d7d16efd17bd4bcc07e62fb4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240203.0.214441/kopia-20240203.0.214441-linux-arm.tar.gz"
    sha256 "b693087899315dc68fcdd383b4fb4af21aa0c2ad5670f70b5571a24277fd066a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240203.0.214441/kopia-20240203.0.214441-linux-arm64.tar.gz"
    sha256 "92275eca95fe83d5358fdf1f5bf73822d8db5495f7c880d086a07c0fb29ecf9b"
  end

  def install
    bin.install "kopia"
  end
end
