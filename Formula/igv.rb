class Igv < Formula
  desc "Interactive Genomics Viewer"
  homepage "https://www.broadinstitute.org/software/igv"
  url "https://data.broadinstitute.org/igv/projects/downloads/2.8/IGV_2.8.11.zip"
  sha256 "e617bfd27414a2948b2c99a26cf4b4b95d76243a22b48407391eacc866863d60"

  livecheck do
    url "https://software.broadinstitute.org/software/igv/download"
    regex(/href=.*?IGV[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  bottle :unneeded

  depends_on "openjdk"

  def install
    inreplace ["igv.sh", "igvtools"], /^prefix=.*/, "prefix=#{libexec}"
    bin.install "igv.sh" => "igv"
    bin.install "igvtools"
    libexec.install "igv.args", "lib"
    bin.env_script_all_files libexec, JAVA_HOME: Formula["openjdk"].opt_prefix
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/igvtools")
    assert_match "org/broad/igv/ui/IGV.class", shell_output("#{Formula["openjdk"].bin}/jar tf #{libexec}/lib/igv.jar")
    # Fails on Jenkins with Unhandled exception: java.awt.HeadlessException
    unless ENV["CI"]
      (testpath/"script").write "exit"
      assert_match "Version", shell_output("#{bin}/igv -b script")
    end
  end
end
