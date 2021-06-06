# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210606.0.141331"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210606.0.141331/kopia-20210606.0.141331-macOS-x64.tar.gz"
    sha256 "ba93ae1aa483a269e29f55d4dbc4f622df585fd66ec7bdfdc3b91eca313d61fb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210606.0.141331/kopia-20210606.0.141331-macOS-arm64.tar.gz"
    sha256 "213ac7d9feef414530566f80de1fa1a7d6937dda0af1e313634d934eb7f940db"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210606.0.141331/kopia-20210606.0.141331-linux-x64.tar.gz"
    sha256 "5516594209aab212da5bc95566d2afe4449fbeaa07b7aa291848ada380acfb91"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210606.0.141331/kopia-20210606.0.141331-linux-arm.tar.gz"
    sha256 "7bc370a59893ed3d3a8bc98f06d5a4587f0c68eafdb674b181a393a308c3e844"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210606.0.141331/kopia-20210606.0.141331-linux-arm64.tar.gz"
    sha256 "2aba152d40b4b2a9811b61e5450c794be9480ec01ca47f15468831ecf8c6e95c"
  end

  def install
    bin.install "kopia"
  end
end
