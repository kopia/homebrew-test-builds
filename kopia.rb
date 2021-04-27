# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210427.0.113358"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.113358/kopia-20210427.0.113358-macOS-x64.tar.gz"
    sha256 "5b32b8d435115c050359e4b3f64380871000da53c46002ead788c4d0f2aa0765"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.113358/kopia-20210427.0.113358-macOS-arm64.tar.gz"
    sha256 "cad2d99f92a4d522715c3960f0d9ca96fe16b74ad3494782f2e314a9f3956e81"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.113358/kopia-20210427.0.113358-linux-x64.tar.gz"
    sha256 "3414cf1e2485ca28e5458ff681a38baa1f1bbac2b471d1e7e0c43ff17a79abf2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.113358/kopia-20210427.0.113358-linux-arm.tar.gz"
    sha256 "815aa409cc4edcc55a5c87a672b7a5fe938f1cd218b91f1f2b3cd866b1a4814d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.113358/kopia-20210427.0.113358-linux-arm64.tar.gz"
    sha256 "078dc17a4ba6dccbcc6dcad63985a1a841c10f283733eefb678416250add2a9f"
  end

  def install
    bin.install "kopia"
  end
end
