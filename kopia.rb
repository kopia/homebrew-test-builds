# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220509.0.224057"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220509.0.224057/kopia-20220509.0.224057-macOS-x64.tar.gz"
    sha256 "d2fd19e965169ef9de10b59fd13ad43c77d1a895b068675ee83e7360615bdfdd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220509.0.224057/kopia-20220509.0.224057-macOS-arm64.tar.gz"
    sha256 "1ef000b890f204a304a4ca5513d255df5bb29e2ff6c366b8994553c354e47176"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220509.0.224057/kopia-20220509.0.224057-linux-x64.tar.gz"
    sha256 "c56f387d5621aa40b0c8da4cd4805db70f57756b3d5097c479eaa38ae1421a9e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220509.0.224057/kopia-20220509.0.224057-linux-arm.tar.gz"
    sha256 "a948c933f54ed98c7f11f279c5eef9839f2ac1fac0335aa7ebacf4fc469d8d6d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220509.0.224057/kopia-20220509.0.224057-linux-arm64.tar.gz"
    sha256 "c67e0a11a1af446b3330d60ed3edbd201ca797a70276bd9de91cce35d1099c97"
  end

  def install
    bin.install "kopia"
  end
end
