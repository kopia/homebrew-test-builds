# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210329.0.191925"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210329.0.191925/kopia-20210329.0.191925-macOS-x64.tar.gz"
    sha256 "75fc1c68bf0af887a53518158e301fc654fc2f49ac21208710d61698f10aca2b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210329.0.191925/kopia-20210329.0.191925-macOS-arm64.tar.gz"
    sha256 "0ac21d529c07f6091811ccee48e29b6e9c9579e0cec3d2c9e5187a5d5aa17599"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210329.0.191925/kopia-20210329.0.191925-linux-x64.tar.gz"
    sha256 "c1c603d1f99f0dfeafa3a7e4f9e2922b1c992bf64a2959a06e6e5327cf929188"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210329.0.191925/kopia-20210329.0.191925-linux-arm.tar.gz"
    sha256 "51226ac398d122571fbf6fb9f6c175146facd63f221564c8ca1cb46360afa406"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210329.0.191925/kopia-20210329.0.191925-linux-arm64.tar.gz"
    sha256 "ee7150d53af3152062d9eb620c1bcfdd08069a7437db60e55b1f664fe1be07b6"
  end

  def install
    bin.install "kopia"
  end
end
