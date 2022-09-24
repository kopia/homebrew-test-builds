# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220923.0.182334"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220923.0.182334/kopia-20220923.0.182334-macOS-x64.tar.gz"
    sha256 "598bfe87d522543014c6e786aa303161e85f0e8a219bfc1f0d6c82a14be498a3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220923.0.182334/kopia-20220923.0.182334-macOS-arm64.tar.gz"
    sha256 "7f6c0a509654bbb72b431ad89a93657ebb696e97d5ee8f3caa2e5551693fa63c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220923.0.182334/kopia-20220923.0.182334-linux-x64.tar.gz"
    sha256 "34b91ff0115285438493e86eb0cbfe0432538d440586390a87803fff79ff6509"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220923.0.182334/kopia-20220923.0.182334-linux-arm.tar.gz"
    sha256 "3672816fc2b6ae5c285c3c76d88c77ba7fbb54b28b4f4e207d6951788464f014"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220923.0.182334/kopia-20220923.0.182334-linux-arm64.tar.gz"
    sha256 "b907e81b0ab11e96edfe89f3ed6c1e0a988d72b187f8a189e6663fbdc0787b4c"
  end

  def install
    bin.install "kopia"
  end
end
