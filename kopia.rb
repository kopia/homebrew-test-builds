# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231127.0.153130"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.153130/kopia-20231127.0.153130-macOS-x64.tar.gz"
    sha256 "0e9796e39e46ea88f0ad620363237d08bc87113121a3abfe4155172f2d5fdb67"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.153130/kopia-20231127.0.153130-macOS-arm64.tar.gz"
    sha256 "ff231024f93dc8d1338711aa10a088a00ff022469783dcf14f5c0ba6c41aeb90"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.153130/kopia-20231127.0.153130-linux-x64.tar.gz"
    sha256 "61a4bdb4ce40737f46ede5dc9d34078606683658a5b91b57d6ce4aa4a16f0df8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.153130/kopia-20231127.0.153130-linux-arm.tar.gz"
    sha256 "0d086d32fa70a9b283983bb665e7e495cc616374dfacf7092285df99aecf622d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.153130/kopia-20231127.0.153130-linux-arm64.tar.gz"
    sha256 "7e946a50b6a3f7510de951eaa1ac53189c0786396607049cdcaa155c0671fa45"
  end

  def install
    bin.install "kopia"
  end
end
