#!/usr/bin/env nextflow

workdir_ch = Channel.fromPath(params.workdir)
sras_id_file = Channel.fromPath(params.sras_id_file)

include { DOWNLOADSRA } from './modules/download_sra.nf'
include { CONVERT_FASTQ } from './modules/convert_fastq.nf'

workflow {
    sras_ch = DOWNLOADSRA(workdir_ch, sras_id_file)
    fastqs_ch = CONVERT_FASTQ(workdir_ch, sras_ch)
}