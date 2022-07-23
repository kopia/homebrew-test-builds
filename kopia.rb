# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220723.0.152313"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.152313/kopia-20220723.0.152313-macOS-x64.tar.gz"
    sha256 "1956e690312b6193ecde7311963053c448eda11f0f7868b7292474601dec38fd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.152313/kopia-20220723.0.152313-macOS-arm64.tar.gz"
    sha256 "52d135ed0287c9739aa02161d032d1138da056298382bdffafee7b7d85197c9f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.152313/kopia-20220723.0.152313-linux-x64.tar.gz"
    sha256 "10c60d69cdbe7ad4b9e7029a626848fb491a712d834b0b277bdd4d1a0a90b73e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.152313/kopia-20220723.0.152313-linux-arm.tar.gz"
    sha256 "80bb7ac669df4bb515949da345a09aadc6248a81b8a0686a8b49e19bb259be9d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.152313/kopia-20220723.0.152313-linux-arm64.tar.gz"
    sha256 "1b6b31e2e604edfa029a2db1c24bd4c89e021df85542aadc6168592f8ccc143a"
  end

  def install
    bin.install "kopia"
  end
end
