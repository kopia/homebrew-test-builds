# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251112.0.52710"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.52710/kopia-20251112.0.52710-macOS-x64.tar.gz"
    sha256 "34665ef57e094830c2852c8331e085560351b5d6da2e702caafcdf94745f415c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.52710/kopia-20251112.0.52710-macOS-arm64.tar.gz"
    sha256 "e64588c5fcb106cede1930bc3478d9850e39b7afaa97206c7aee00b8285b0230"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.52710/kopia-20251112.0.52710-linux-x64.tar.gz"
    sha256 "50331b2bcfed13b733be13d994185ba110cc5df8eec65c9d309b57c522896696"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.52710/kopia-20251112.0.52710-linux-arm.tar.gz"
    sha256 "2ae4ad2b0145dbe150ae954344e2dab81ba467b64c13c7839b497d0a66da2606"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.52710/kopia-20251112.0.52710-linux-arm64.tar.gz"
    sha256 "d59ede57e30c6d962649ffed21d20769a11500b4c592ff9410888528ec22aade"
  end

  def install
    bin.install "kopia"
  end
end
