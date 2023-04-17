# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230416.0.234826"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230416.0.234826/kopia-20230416.0.234826-macOS-x64.tar.gz"
    sha256 "04ed25809d8c08ea12c4123d4fa07d5f8ce8045cba3a6fad4c9ad8abe1d3b304"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230416.0.234826/kopia-20230416.0.234826-macOS-arm64.tar.gz"
    sha256 "d838993453be4d45cf4921c806b85cd9f45cb58e929ce86e2742a076d170601c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230416.0.234826/kopia-20230416.0.234826-linux-x64.tar.gz"
    sha256 "4c3bbf1f45b8365f1e45f9246b89c10ab426ec669f43fd09b4a573aff064d259"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230416.0.234826/kopia-20230416.0.234826-linux-arm.tar.gz"
    sha256 "fb983126cb162c949cda2dcb39a43522ede840c41c57a53a537444f978136c96"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230416.0.234826/kopia-20230416.0.234826-linux-arm64.tar.gz"
    sha256 "14d941aec957aa9aca9ce8a08b3d2d78fdc27753daddcfb4ecbbdb1796d738bc"
  end

  def install
    bin.install "kopia"
  end
end
