#!/usr/bin/env nextflow

sras_id_file = params.sras_id_file
workdir = params.workdir


process DOWNLOADSRA {
    shell = ['/bin/sh', '-e']

    input:
    path workdir
    file sras_id_file

    output:
    path "${workdir}/SRR*"

    script:
    """
    while read sra_id; do
        sra_dir="${workdir}/\${sra_id}"
        mkdir -p "\$sra_dir"
        
        if [ ! -f "\$sra_dir/\${sra_id}.sra" ]; then
            prefetch "\$sra_id" -X $params.max_download --output-directory "\$sra_dir"
        fi
    done < $sras_id_file

    """
}