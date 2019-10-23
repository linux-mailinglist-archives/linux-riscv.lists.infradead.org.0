Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4D1E136D
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 09:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a0Lr4OOUGtbdlhqRDM+NfybQW5c8oES+x1KvTlsoRCc=; b=j8KN4D167IFAbW
	y8IrAA7ZkafEXAlN/ZKITuiSx5Mc+rhqHAa8rzKqded8dBHQ1T9TR71DrntPPYAsdnrV2W2kZI+Or
	URhR+W97WAKGqMmSSgNRc/ZqGM0e8YU/3rXQCP64f0p52D5k/JfPyMM1yrL8ggZrB4hMXnO+8rQlk
	STs4mojMSPsovqhETmP/s/3Wy5Fg1TPNQ4H4duB+1PFvbkq+q4Q0xH2SCQJ9OglC6M27IObLQn4iz
	h/8kM1rxPECudUT6K8T0xIjEoBGf1sOLiOL1mt3qkCz1CE/PZQMWgIsTpZLDqehZHNYgyuBk/TFAo
	UcyGvDBISJjwoVlxPhwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNBPe-000061-JQ; Wed, 23 Oct 2019 07:50:34 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNBPa-00005H-Mg
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 07:50:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B3948B55C
 for <linux-riscv@lists.infradead.org>; Wed, 23 Oct 2019 07:50:27 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: linux-riscv@lists.infradead.org
Subject: swap_info_get: Bad swap offset entry
X-Yow: Dizzy, are we "REAL PEOPLE" or "AMAZING ANIMALS"?
Date: Wed, 23 Oct 2019 09:50:27 +0200
Message-ID: <mvmpninsxx8.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_005031_034218_134FC26D 
X-CRM114-Status: UNSURE (   5.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

I got these messages during an OOM situation.  The last few messages
look worrying.

[40671.393555] python3 invoked oom-killer: gfp_mask=0x0(), order=0, oom_score_adj=0
[40671.400209] CPU: 2 PID: 28600 Comm: python3 Not tainted 5.4.0-rc4-1.g9db4e16-default #1 openSUSE Tumbleweed (unreleased)
[40671.411022] Call Trace:
[40671.413469] [<ffffffe000043992>] walk_stackframe+0x0/0xaa
[40671.418841] [<ffffffe000043b7e>] show_stack+0x2a/0x34
[40671.423881] [<ffffffe00060fbbe>] dump_stack+0x66/0x82
[40671.428921] [<ffffffe000115058>] dump_header+0x40/0x1a4
[40671.434121] [<ffffffe000114852>] oom_kill_process+0x1b2/0x1b4
[40671.439851] [<ffffffe000114eaa>] out_of_memory+0x15a/0x25e
[40671.445321] [<ffffffe000115000>] pagefault_out_of_memory+0x52/0x6a
[40671.451486] [<ffffffe000045f5e>] do_page_fault+0x2f8/0x322
[40671.456955] [<ffffffe0000426c0>] ret_from_exception+0x0/0xc
[40671.462541] Mem-Info:
[40671.464790] active_anon:1212163 inactive_anon:238166 isolated_anon:0
[40671.464790]  active_file:29657 inactive_file:157590 isolated_file:0
[40671.464790]  unevictable:20 dirty:19 writeback:0 unstable:0
[40671.464790]  slab_reclaimable:14343 slab_unreclaimable:15189
[40671.464790]  mapped:8335 shmem:104 pagetables:3538 bounce:0
[40671.464790]  free:361296 free_pcp:2077 free_cma:0
[40671.498898] Node 0 active_anon:4848652kB inactive_anon:952664kB active_file:118972kB inactive_file:631736kB unevictable:80kB isolated(anon):0kB isolated(file):0kB mapped:33684kB dirty:76kB writeback:0kB shmem:416kB writeback_tmp:0kB unstable:0kB all_unreclaimable? no
[40671.522481] DMA32 free:589296kB min:2804kB low:4804kB high:6804kB active_anon:485736kB inactive_anon:537484kB active_file:14840kB inactive_file:376340kB unevictable:0kB writepending:12kB present:2095104kB managed:2019720kB mlocked:0kB kernel_stack:136kB pagetables:1092kB bounce:0kB free_pcp:5120kB local_pcp:1500kB free_cma:0kB
[40671.551372] lowmem_reserve[]: 0 6003 6003
[40671.555358] Normal free:852132kB min:8608kB low:14752kB high:20896kB active_anon:4362916kB inactive_anon:415180kB active_file:104648kB inactive_file:257632kB unevictable:80kB writepending:320kB present:6291456kB managed:6147344kB mlocked:80kB kernel_stack:1312kB pagetables:13060kB bounce:0kB free_pcp:2344kB local_pcp:1348kB free_cma:0kB
[40671.585124] lowmem_reserve[]: 0 0 0
[40671.588571] DMA32: 103796*4kB (UME) 13886*8kB (UME) 1175*16kB (UME) 384*32kB (UME) 155*64kB (UME) 32*128kB (UM) 18*256kB (UME) 8*512kB (UME) 5*1024kB (ME) 2*2048kB (ME) 0*4096kB = 589296kB
[40671.605356] Normal: 141095*4kB (UMEH) 17103*8kB (UMEH) 457*16kB (UMEH) 157*32kB (UMEH) 97*64kB (UMEH) 32*128kB (UMEH) 9*256kB (M) 100*512kB (M) 73*1024kB (M) 0*2048kB 0*4096kB = 852100kB
[40671.621944] Node 0 hugepages_total=0 hugepages_free=0 hugepages_surp=0 hugepages_size=2048kB
[40671.630361] 190750 total pagecache pages
[40671.634247] 2253 pages in swap cache
[40671.637823] Swap cache stats: add 55204, delete 52951, find 627114/627909
[40671.644573] Free swap  = 1982460kB
[40671.647980] Total swap = 2198524kB
[40671.651345] 2096640 pages RAM
[40671.654295] 0 pages HighMem/MovableOnly
[40671.658136] 54874 pages reserved
[40671.661330] Tasks state (memory values in pages):
[40671.666038] [  pid  ]   uid  tgid total_vm      rss pgtables_bytes swapents oom_score_adj name
[40671.674642] [    658]     0   658    15364     1357    94208        0          -250 systemd-journal
[40671.683670] [    664]     0   664     1851      319    36864      463             0 haveged
[40671.692002] [    682]     0   682     6187      690    61440      620         -1000 systemd-udevd
[40671.700862] [    744]     0   744     3736      105    40960       32         -1000 auditd
[40671.709108] [    763]   475   763     2680      962    53248      197             0 avahi-daemon
[40671.717875] [    764]   499   764     4040     1110    61440     1150          -900 dbus-daemon
[40671.726569] [    767]     0   767    19362      427    40960        0             0 irqbalance
[40671.735162] [    779]   478   779     1898      308    45056       21             0 rpcbind
[40671.743470] [    783]     0   783     1745      598    40960       84             0 wickedd-auto4
[40671.752346] [    784]   472   784   192760     3147   249856     9929             0 nscd
[40671.760419] [    789]     0   789     1746      790    40960       68             0 wickedd-dhcp4
[40671.769275] [    792]     0   792     1746      987    45056       99             0 wickedd-dhcp6
[40671.778130] [    835]     0   835     1776     1036    45056       46             0 wickedd
[40671.786465] [    837]     0   837     1752      885    40960       92             0 wickedd-nanny
[40671.795320] [   1175]   467  1175    19262      308    36864        2             0 chronyd
[40671.803636] [   1190]     0  1190    35847     3963   155648     8894             0 ypbind
[40671.811904] [   1191]   477  1191    14810     2831   151552     9594             0 rpc.statd
[40671.820412] [   1230]     0  1230     2250      224    45056      185         -1000 sshd
[40671.828486] [   1236]     0  1236     2592      490    45056       37             0 systemd-logind
[40671.837428] [   1239]     0  1239      552      260    36864        0             0 agetty
[40671.845676] [   1240]     0  1240     1194      320    32768        1             0 agetty
[40671.853907] [   1253]     0  1253   138281     2999   212992    10178             0 automount
[40671.862433] [   1332]     0  1332     3070      239    53248      164             0 master
[40671.870681] [   1334]    51  1334     3162      668    49152        0             0 qmgr
[40671.878755] [   1347]     0  1347     1583      386    40960        6             0 cron
[40671.886838] [   1670]     0  1670     2995      535    45056      115             0 systemd
[40671.895165] [   1673]     0  1673     3945      123    49152      619             0 (sd-pam)
[40671.903568] [   2305]     0  2305     2677      686    57344      108             0 sshd
[40671.911662] [   2319]     0  2319     2325      555    49152      376             0 bash
[40671.919736] [   2863]     0  2863     2579      540    49152       20             0 sshd
[40671.927809] [   2870]     0  2870     2222      634    49152      165             0 screen
[40671.936057] [   2871]     0  2871     7705     3069    90112     2840             0 bs_worker
[40671.944548] [   2884] 17005  2884     2965      552    49152      102             0 systemd
[40671.952904] [   2885] 17005  2885    24525      128    65536      661             0 (sd-pam)
[40671.961324] [   2893] 17005  2893     2662      340    49152       88             0 sshd
[40671.969398] [   2894] 17005  2894    18564    11834   176128     4547             0 bash
[40671.977473] [   2940]     0  2940     1887      281    49152        0             0 screen
[40671.985720] [  24184]    51 24184     3072      399    49152        0             0 pickup
[40671.993959] [  24834]     0 24834    11142     4978   114688     4013             0 bs_worker
[40672.002494] [  24836]     0 24836     1769     1157    40960        0             0 build
[40672.010643] [  24846]     0 24846     1352      551    36864        0             0 perl
[40672.018715] [  25693]     0 25693     1170      705    32768        0             0 su
[40672.026615] [  25694]   399 25694     1836     1422    40960        0             0 rpmbuild
[40672.035041] [  28587]   399 28587      709      535    28672        0             0 sh
[40672.042917] [  28590]   399 28590    36039    27057   262144        0             0 py.test-3.7
[40672.051620] [  28597]   399 28597    63644    51842   507904        0             0 python3
[40672.059954] [  28600]   399 28600  1253107  1243089 10305536        0             0 python3
[40672.068288] [  28603]   399 28603    66335    54587   512000        0             0 python3
[40672.076623] [  28606]   399 28606    52284    48204   438272        0             0 python3
[40672.084953] [    691]     0   691     7705     2826    90112     2757             0 bs_worker
[40672.093463] oom-kill:constraint=CONSTRAINT_NONE,nodemask=(null),cpuset=/,mems_allowed=0,global_oom,task_memcg=/system.slice/obsworker.service,task=python3,pid=28600,uid=399
[40672.108850] Out of memory: Killed process 28600 (python3) total-vm:5012428kB, anon-rss:4959416kB, file-rss:12940kB, shmem-rss:0kB, UID:399 pgtables:10305536kB oom_score_adj:0
[40673.187418] swap_info_get: Bad swap offset entry 1ffffffc0118a01
[40673.192651] BUG: Bad page map in process python3  pte:ffffffe008c50080 pmd:22393c01
[40673.200327] addr:0000003fa0bfd000 vm_flags:00100073 anon_vma:ffffffe1d24ce948 mapping:0000000000000000 index:405651e
[40673.210822] file:(null) fault:0x0 mmap:0x0 readpage:0x0
[40673.216021] CPU: 1 PID: 28600 Comm: python3 Not tainted 5.4.0-rc4-1.g9db4e16-default #1 openSUSE Tumbleweed (unreleased)
[40673.226850] Call Trace:
[40673.229298] [<ffffffe000043992>] walk_stackframe+0x0/0xaa
[40673.234669] [<ffffffe000043b7e>] show_stack+0x2a/0x34
[40673.239710] [<ffffffe00060fbbe>] dump_stack+0x66/0x82
[40673.244742] [<ffffffe000133bf8>] print_bad_pte+0x13a/0x1ae
[40673.250210] [<ffffffe000135482>] unmap_page_range+0x1fe/0x5c4
[40673.255949] [<ffffffe0001149b6>] __oom_reap_task_mm+0x9c/0xfe
[40673.261674] [<ffffffe00013c336>] exit_mmap+0xe0/0x108
[40673.266709] [<ffffffe00004a6c8>] mmput+0x4c/0x106
[40673.271396] [<ffffffe00004fbce>] do_exit+0x1dc/0x7ea
[40673.276343] [<ffffffe000050236>] do_group_exit+0x2a/0x7e
[40673.281645] [<ffffffe000058440>] get_signal+0x12a/0x72c
[40673.286849] [<ffffffe000043438>] do_notify_resume+0x2e/0xec
[40673.292404] [<ffffffe0000426c0>] ret_from_exception+0x0/0xc
[40673.297989] Disabling lock debugging due to kernel taint
[40673.385494] oom_reaper: reaped process 28600 (python3), now anon-rss:4kB, file-rss:0kB, shmem-rss:0kB
[40809.404970] BUG: Bad rss-counter state mm:00000000faa80a55 type:MM_ANONPAGES val:1
[40809.411774] BUG: Bad rss-counter state mm:00000000faa80a55 type:MM_SWAPENTS val:-1

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
