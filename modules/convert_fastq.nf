process CONVERT_FASTQ {
    shell = '/bin/sh -e'

    input:
    path workdir
    path sra_dir

    output:
    path "*.fastq.gz"

    script:
    """
    fastq-dump --split-files --gzip "$sra_dir"
    """
}
