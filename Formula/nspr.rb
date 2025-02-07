class Nspr < Formula
  desc "Platform-neutral API for system-level and libc-like functions"
  homepage "https://developer.mozilla.org/docs/Mozilla/Projects/NSPR"
  url "https://archive.mozilla.org/pub/nspr/releases/v4.29/src/nspr-4.29.tar.gz"
  sha256 "22286bdb8059d74632cc7c2865c139e63953ecfb33bf4362ab58827e86e92582"
  license "MPL-2.0"

  livecheck do
    url "https://ftp.mozilla.org/pub/nspr/releases/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  bottle do
    sha256 cellar: :any, arm64_big_sur: "c02e2a44ebd1f681e356062d94af3a7682c212156ec99b7d193f5ff0cd77735b"
    sha256 cellar: :any, big_sur:       "853f1762fc3372f776f66ead09a8f45b7d03de583b5d70a2c11140eafb899897"
    sha256 cellar: :any, catalina:      "c47dc31bf73d954e1d4629a92cff5f2e5801573fa9cc1caab7c9ea3b0fb68566"
    sha256 cellar: :any, mojave:        "5b87579476cdbb34be47c9579125183f9ff29373e9b25e94d419b02995e6ae29"
    sha256 cellar: :any, high_sierra:   "1b3e41e52e1dc0131ca2ae486d099fb91e7e983355d8dd4ae18ff47a8547fe1e"
    sha256 cellar: :any, x86_64_linux:  "0dee087b3795b8515b5ea2ed6f31fd51371ad8585afa1f3d62b56ee62bdf1ac6"
  end

  def install
    ENV.deparallelize
    cd "nspr" do
      args = %W[
        --disable-debug
        --prefix=#{prefix}
        --enable-strip
        --with-pthreads
        --enable-ipv6
        --enable-macos-target=#{MacOS.version}
        --enable-64bit
      ]
      system "./configure", *args
      # Remove the broken (for anyone but Firefox) install_name
      inreplace "config/autoconf.mk", "-install_name @executable_path/$@ ", "-install_name #{lib}/$@ " if OS.mac?

      system "make"
      system "make", "install"

      (bin/"compile-et.pl").unlink
      (bin/"prerr.properties").unlink
    end
  end

  test do
    system "#{bin}/nspr-config", "--version"
  end
end
