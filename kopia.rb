# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240312.0.115225"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240312.0.115225/kopia-20240312.0.115225-macOS-x64.tar.gz"
    sha256 "57f53f556cff8798afe6d10d05687da9f84672a70646377d23d0676005a654ad"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240312.0.115225/kopia-20240312.0.115225-macOS-arm64.tar.gz"
    sha256 "e7e8aac3d2ddb0c89d3d8cf83a0e1f46c7265c34182f68df055ec66e9eae8d92"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240312.0.115225/kopia-20240312.0.115225-linux-x64.tar.gz"
    sha256 "ba412084fd8fa8abfa6717f5f50578888fe8cbbad2930fd86770b34b590989fe"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240312.0.115225/kopia-20240312.0.115225-linux-arm.tar.gz"
    sha256 "16979707cbd2f6787c49225e7cddc278e50f121e54e7b2979f60b99458d2b280"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240312.0.115225/kopia-20240312.0.115225-linux-arm64.tar.gz"
    sha256 "1267c96bffad4a5b74af1b544bb34733a0da39b416b17d9596c246725d4cfaaf"
  end

  def install
    bin.install "kopia"
  end
end
