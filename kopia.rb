# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220127.0.182740"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220127.0.182740/kopia-20220127.0.182740-macOS-x64.tar.gz"
    sha256 "6500e0c2869d8693876ffc642600994f8b8f3938f02586ff4e55b24a87bba30b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220127.0.182740/kopia-20220127.0.182740-macOS-arm64.tar.gz"
    sha256 "f3627c07e08613dd0b32cc74827c96f34bfdf3cf5597a2863c05af7bd6cad8d6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220127.0.182740/kopia-20220127.0.182740-linux-x64.tar.gz"
    sha256 "d5d3e2f14e753db1b19c4cd5e6c35303491d3265bef8af20b603ccdb15a12ead"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220127.0.182740/kopia-20220127.0.182740-linux-arm.tar.gz"
    sha256 "f3a9fd9bd06d190b6bf26c9185b4af8df4a9e8b3da59476853d53244bbb02db9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220127.0.182740/kopia-20220127.0.182740-linux-arm64.tar.gz"
    sha256 "fa721fc57992d6c1bf91cdaa28982429f797879151d6efa403e1f3a79cf0d600"
  end

  def install
    bin.install "kopia"
  end
end
