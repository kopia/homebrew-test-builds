# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250123.0.212317"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250123.0.212317/kopia-20250123.0.212317-macOS-x64.tar.gz"
    sha256 "94a7569b861aa4226a190815387ad509f8e4fef017be7a7af272eea996005736"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250123.0.212317/kopia-20250123.0.212317-macOS-arm64.tar.gz"
    sha256 "cece7dc3ca3b050a8f5ae88a06a096027bb137f09789e43eb19ce85fc93db61b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250123.0.212317/kopia-20250123.0.212317-linux-x64.tar.gz"
    sha256 "fd438e846613541b239c4409f55b7f5f1547cba2d60ccc0e95977c132eb5995f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250123.0.212317/kopia-20250123.0.212317-linux-arm.tar.gz"
    sha256 "9cf88ce3999203cd8f2774d9849f3b43ed11176b6625703f39993cd691dc671d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250123.0.212317/kopia-20250123.0.212317-linux-arm64.tar.gz"
    sha256 "e7f491019d96b805341f1c916d3f05ec8fdc58e42746334ea6daa9098a507df4"
  end

  def install
    bin.install "kopia"
  end
end
