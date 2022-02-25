# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220224.0.173601"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220224.0.173601/kopia-20220224.0.173601-macOS-x64.tar.gz"
    sha256 "61721a4281fb4ed7a165ceefd04a174ea3108e2b5a90dc40e10eb8ae16bd8d65"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220224.0.173601/kopia-20220224.0.173601-macOS-arm64.tar.gz"
    sha256 "5a89c9f8c5095dcae3041666b53b38d035abe04116d4691be9d724e33a85a086"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220224.0.173601/kopia-20220224.0.173601-linux-x64.tar.gz"
    sha256 "4f15afa684e83fff9ca1232f295519644060ed03b0f12fcb356870b43f3a089d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220224.0.173601/kopia-20220224.0.173601-linux-arm.tar.gz"
    sha256 "5865728c810ae141d32c4d46fb2e374ed0d352ae7cb5cca70020ac625e8586cd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220224.0.173601/kopia-20220224.0.173601-linux-arm64.tar.gz"
    sha256 "d738fc6d60805cf995c8e0128ba3578930131b4a0db5f9bd7dcb118e79296c2c"
  end

  def install
    bin.install "kopia"
  end
end
