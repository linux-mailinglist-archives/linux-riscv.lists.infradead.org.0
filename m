Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 828991C7A47
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 21:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=U/ernjlWFieOPGdk5bxuU02A1airnA+eU6L415hOM1o=; b=NaT
	MScMaiQqEbA7r0pHG5wZZROMRv11rj0RHHflTHChEa0yPH+0EaeKms8PisVijBQFmYzQakqY3WwZI
	YqSkkPz3Xa8VgmOXfjKwMZgAvYxW1fLBE3zRhm1Ts2H5r+76w9Loso6NiBwvSqCNj3aQH7H4B1teW
	wTlzx4N5kWzwwTBnA6V4KpQHyXVTudEpbApzWsHooHg6EzwFTZsyu4Sa76K5QCgXwmZE5qCXPlPJb
	8uNQJ8gpFzhqo1bl53//kTXBYK05P8erBBN3LlTD0urZz4zdka7rb8Vi6KewKamkRmdGQX3oXcAPx
	+7fN46GJKngkedASOEfxAabB25/1kDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWPhF-0005Bw-Tg; Wed, 06 May 2020 19:27:09 +0000
Received: from mail-co1nam11on2069.outbound.protection.outlook.com
 ([40.107.220.69] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWPhC-0005B3-72
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 19:27:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XtZ9pu+xpaWEIGGK0VVTg4zXOwPQc6ypYuCWBYtkX4SAn9kWgplHNGChhVM5AC0BjpqCeZ+HYiQxqBknzEfNOGxG6TfMXbqTSGxL5s+dOpmUEtIcgdssuP91RbJmkT+71hapJzWgUODFAVJ3fZNgfXkvpUK/qSyZCn8uNm2ii0sYdKwcF9TlwpTkIasehltVfbkSbh3QW53MWF1vIyjktNCnyr1zAE5EAxLQMLEf/ZZD7zqih2CCQQ5JbTF2aUo4C7TpFFK4ucayDReuU8ImtZHONa6gky2HeeJMuL04OpNjQutfMZNpqm+4gNr6b3IdSs4R+hYzJM6EFNEjh3/e2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U/ernjlWFieOPGdk5bxuU02A1airnA+eU6L415hOM1o=;
 b=RVugOrl4UxnqIr0bu7i1s0Bn9NZuO1ZeovLk48t+LvkDuwyzMhDXgnVKvLYzqS+p3TYZZNr8I1b2J5wqw/2UgwyslKBrsYJqVN1fGnjGyOmQnhbzx6dlFdXH6h8R8g7GiotdZs/gslRMShpXccHAMfwqLkhpHu9HjN6fFbr7uXnq5ouuGhdQO/Nu77G9Aw+bjN8u7QaloNhazTyABVvLJA7MhfOOCtMZcykCxMwt497r3pl42PrvIH28nuioZTSlEWwXir6eeRlXekvDRqjNLc9WRDOfqolAeOwA73LRDP0Rr22WtzUv3sdbPVHgKBi5fgqrUx+iYFQ95JdtcRxK3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U/ernjlWFieOPGdk5bxuU02A1airnA+eU6L415hOM1o=;
 b=Ykni5kGunRx6urURGz5lscxmfnFy8nQnzBAeTYZu4DMbupudU+OYIyA67SYe6UrIdSvGqPEJjFHC1SIZDGSvJqulqzLZgWqUdXcToBnS8R9809YMh0T1U5xlYOyyZvnsFBujpE61OJQNL2Uc9n/+KK7+TFX30nUU+RnXTcL0pQ0=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=sifive.com;
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.22; Wed, 6 May
 2020 19:27:02 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929%6]) with mapi id 15.20.2979.028; Wed, 6 May 2020
 19:27:02 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: gregkh@linuxfoundation.org,
	palmer@dabbelt.com
Subject: [PATCH] fix for spin lock bad magic on SiFive UART 
Date: Wed,  6 May 2020 12:26:51 -0700
Message-Id: <1588793212-5586-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: BY5PR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::26) To BN8PR13MB2611.namprd13.prod.outlook.com
 (2603:10b6:408:81::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BY5PR03CA0016.namprd03.prod.outlook.com (2603:10b6:a03:1e0::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.27 via Frontend
 Transport; Wed, 6 May 2020 19:27:01 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8e9d42f9-9194-4fc7-d1cc-08d7f1f373b6
X-MS-TrafficTypeDiagnostic: BN8PR13MB2611:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN8PR13MB2611CBCA91673458C4235D2799A40@BN8PR13MB2611.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 03950F25EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TkQjWq09W7wDEmxG2hhfLiLboSNi1TTIir2m1kYkFwwb3LLDG0fYvwX5DXhCcom1RycPu3e9lbu5FbBbK46mpLYiHw7AKz1+5E29ZszfTITwbBPgSczGJq+nSGoH7a3V1++jVfN5OH3FXCQBf4wtuiMok8Ua3x0w6WH/I1rGOozGREdjhj+St5G6bta6ctBgoUqwjnpSddVFp3JAUGI39G8Z3L/MgFuQ6DW852u81EnI7RV5e0mSS9sESIqHYgmyRoWb69k1e7tmrg/rS3Ve37PFEumEUphEwyb1/fJND7+oa/5IkzcQs7w1YSWqdIZigHT810ojb3AaxYWlKXWMABwB4d/6eY9emg3qsaAP6Q36cco9oVPN1onS5xU6Nx5Jh9zXBy30Vo5oangIn7QsgIcNcyMtTxZXO4fDhbOcZkOpNCBIDnfgb47YxfepTin/2usaKSJOSyX6lYOaL54Wr+YBLYyYzwDKRKwWPw2tqzYr+z1N2s3UyYA5uJP6GpU8Ufmp5RDMwczYBm2N0g5lA1pwyyG+AiBk/fo+u2BxDCkB3EwkBWOY8kzSm0qWw23l7K+Z9Rm4YmLzXB8IYDFoVeiBIz6Nl2M6yq+NQyTKmvA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(136003)(366004)(39840400004)(376002)(346002)(396003)(33430700001)(5660300002)(956004)(8676002)(2616005)(316002)(30864003)(33440700001)(86362001)(107886003)(478600001)(966005)(8936002)(66556008)(16526019)(26005)(2906002)(6486002)(66476007)(186003)(4743002)(6666004)(66946007)(7696005)(36756003)(52116002)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: G6sDLnCKfaVojYvuWWZeQsMh3+ZjlzgNodifQV6U0gI7pdXJhkDtLPo0dj/Xe/8Pkwa9CZnSqpZisBLluus97Wo8b8fDkZZ3N8Ely9dNJaFgL4JyoT0s3w8vX9svuvzU22QbTx7jR9upaMSinhTuFlKPZgtDybYih0N0Hs8ZAorhMc3UztZuzSVQSJ4opzSxSW5Kq2e1bWR6XTC7mtSSeRGEnzOmok2fWFcfURTMJDxTbEyFw6IXSMRWyaV1kV6ycgjgp+SCNQkXL0QX3n9EFrGLuV6mRuMhQZ3hwv3SWHxCa1pCnIXF25iAUuLbYZip2h1NXlDizl1TFOcZ3G+OVMmXKt9q/oAnYcCgeZpkof0+ahn8J4q66f9UkzVMbGFpVsv3JaJigbqsW7/DywnJSzZXz0fQEjnv52QFbuEmZhuSa8bq70+csni/wmJVfT8h8BPOkUfwJMZWJ7ag0Ur7zuUapquLjzAIPouEv1nlC8NUr4LlLeYSWz6U7+0rKeESVpkj9nM/514lBc0VNyrmalt+8qncmqehcE/zLE9meDWJ32deAw1PLTwAnPRafXiVuE0JQpiQOPNBYMM5wdQYLL8asUThYQ4RQLq5m2/RxP7ERxop3YfckRdQk61O95UH4ikAWQyZSkc2hlVz/F1kiM+4CiMoYnbB9KD8A1O8gfMvAwYpd7+53DGiZyL3h3rcTr/+jerIWfAYBAYvyOVjJqRTpKC4JZlk8je0mvZ/TC/+W8NREU2jkO3xki+3VeH0URez0sclRG3vankFt1GOy+czHSCTI2SEjogVjEcuc+I=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e9d42f9-9194-4fc7-d1cc-08d7f1f373b6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2020 19:27:01.9871 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SieIFzA7rEaL0a2VZ3KZs+zasQ2UEPhBl3KvaH/Fs2xSR3ttvuxTv/kEGBgCGpDuqyGzU09X3QVkGTJPF1XZgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2611
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_122706_455733_EE85BAEF 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.69 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Atish.Patra@wdc.com, linux-riscv@lists.infradead.org, Anup.Patel@wdc.com,
 Sagar Shrikant Kadam <sagar.kadam@sifive.com>, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

A bad magic spin lock error was observed on HiFive Unleashed 
running 5.7-rc1+ linux kernel. The discussion is available here [1].
Thanks to Atish Patra <Atish.Patra@wdc.com> for reporting it.

Although spin locks are used within the driver to guard the critical
sections, we missed to initialise it this resulted in race condition
and raised a spin lock error as shown in log below.

This happens at the time of hand-off between sifive serial and earlycon 
driver (one is enabled and another is disabled) on any random CPU.

[1]: http://lists.infradead.org/pipermail/linux-riscv/2020-May/009724.html
 
Error Log:
=============================================================
OpenSBI v0.7-31-gd626037
   ____                    _____ ____ _____
  / __ \                  / ____|  _ \_   _|
 | |  | |_ __   ___ _ __ | (___ | |_) || |
 | |  | | '_ \ / _ \ '_ \ \___ \|  _ < | |
 | |__| | |_) |  __/ | | |____) | |_) || |_
  \____/| .__/ \___|_| |_|_____/|____/_____|
        | |
        |_|

Platform Name          : SiFive Freedom U540
Platform HART Features : RV64ACDFIMSU
Platform HART Count    : 4
Current HART ID        : 1
Firmware Base          : 0x80000000
Firmware Size          : 100 KB
Runtime SBI Version    : 0.2

MIDELEG : 0x0000000000000222
MEDELEG : 0x000000000000b109
PMP0    : 0x0000000080000000-0x000000008001ffff (A)
PMP1    : 0x0000000000000000-0x0000007fffffffff (A,R,W,X)


U-Boot 2020.07-rc1-00201-g24e3f96-dirty (May 05 2020 - 05:44:09 -0700)

CPU:   rv64imafdc
Model: SiFive HiFive Unleashed A00
DRAM:  8 GiB
MMC:   spi@10050000:mmc@0: 0
In:    serial@10010000
Out:   serial@10010000
Err:   serial@10010000
Net:   eth0: ethernet@10090000
Hit any key to stop autoboot:  0
=>
=> setenv bootargs "root=/dev/ram rw console=ttySIF0 earlycon=sbi"
=> mmc rescan ; fatload mmc 0:2 0x80200000 uImage 
=> fatload mmc 0:2 0x82200000 hifive-unleashed-a00-.dtb 
=> bootm 0x80200000 - 0x82200000
21413948 bytes read in 11434 ms (1.8 MiB/s)
7100 bytes read in 12 ms (577.1 KiB/s)
## Booting kernel from Legacy Image at 80200000 ...
   Image Name:   Linux
   Image Type:   RISC-V Linux Kernel Image (uncompressed)
   Data Size:    21413884 Bytes = 20.4 MiB
   Load Address: 80200000
   Entry Point:  80200000
   Verifying Checksum ... OK
## Flattened Device Tree blob at 82200000
   Booting using the fdt blob at 0x82200000
   Loading Kernel Image
   Using Device Tree in place at 0000000082200000, end 0000000082204bbb

Starting kernel ...

[    0.000000] OF: fdt: Ignoring memory range 0x80000000 - 0x80200000
[    0.000000] Linux version 5.7.0-rc4-00001-g0319a09-dirty (sagark2@sifive.com) (gcc version 8.2.0 (Buildroot 2018.11-rc2-00003-ga0787e9), GNU ld (GNU Binutils) 2.31.1) #2 SMP Wed May 6 11:46:22 PDT 2020
[    0.000000] earlycon: sbi0 at I/O port 0x0 (options '')
[    0.000000] printk: bootconsole [sbi0] enabled
[    0.000000] initrd not found or empty - disabling initrd
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000080200000-0x00000000ffffffff]
[    0.000000]   Normal   [mem 0x0000000100000000-0x000000027fffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000080200000-0x000000027fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000080200000-0x000000027fffffff]
[    0.000000] software IO TLB: mapped [mem 0xfbfff000-0xfffff000] (64MB)
[    0.000000] SBI specification v0.2 detected
[    0.000000] SBI implementation ID=0x1 Version=0x7
[    0.000000] SBI v0.2 TIME extension detected
[    0.000000] SBI v0.2 IPI extension detected
[    0.000000] SBI v0.2 RFENCE extension detected
[    0.000000] SBI v0.2 HSM extension detected
[    0.000000] CPU with hartid=0 is not available
[    0.000000] CPU with hartid=0 is not available
[    0.000000] elf_hwcap is 0x112d
[    0.000000] percpu: Embedded 17 pages/cpu s31976 r8192 d29464 u69632
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 2067975
[    0.000000] Kernel command line: root=/dev/ram rw console=ttySIF0 earlycon=sbi
[    0.000000] Dentry cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
[    0.000000] Inode-cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
[    0.000000] Sorting __ex_table...
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 8172080K/8386560K available (6403K kernel code, 4268K rwdata, 4096K rodata, 4599K init, 317K bss, 214480K reserved, 0K cma-reserved)
[    0.000000] Virtual kernel memory layout:
[    0.000000]       fixmap : 0xffffffcefee00000 - 0xffffffceff000000   (2048 kB)
[    0.000000]       pci io : 0xffffffceff000000 - 0xffffffcf00000000   (  16 MB)
[    0.000000]      vmemmap : 0xffffffcf00000000 - 0xffffffcfffffffff   (4095 MB)
[    0.000000]      vmalloc : 0xffffffd000000000 - 0xffffffdfffffffff   (65535 MB)
[    0.000000]       lowmem : 0xffffffe000000000 - 0xffffffe1ffe00000   (8190 MB)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=8 to nr_cpu_ids=4.
[    0.000000] rcu:     RCU debug extended QS entry/exit.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
[    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0
[    0.000000] plic: mapped 53 interrupts with 4 handlers for 9 contexts.
[    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [1]
[    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 3526361616960 ns
[    0.000006] sched_clock: 64 bits at 1000kHz, resolution 1000ns, wraps every 2199023255500ns
[    0.008564] Console: colour dummy device 80x25
[    0.012994] Calibrating delay loop (skipped), value calculated using timer frequency.. 2.00 BogoMIPS (lpj=4000)
[    0.023105] pid_max: default: 32768 minimum: 301
[    0.028307] Mount-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.035768] Mountpoint-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.045466] rcu: Hierarchical SRCU implementation.
[    0.050232] smp: Bringing up secondary CPUs ...
[    0.056183] smp: Brought up 1 node, 4 CPUs
[    0.060951] devtmpfs: initialized
[    0.065496] random: get_random_u32 called from bucket_table_alloc.isra.25+0x4e/0x160 with crng_init=0
[    0.065883] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.084236] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.091933] NET: Registered protocol family 16
[    0.112741] vgaarb: loaded
[    0.115121] SCSI subsystem initialized
[    0.119037] usbcore: registered new interface driver usbfs
[    0.124200] usbcore: registered new interface driver hub
[    0.129609] usbcore: registered new device driver usb
[    0.135583] clocksource: Switched to clocksource riscv_clocksource
[    0.149004] NET: Registered protocol family 2
[    0.153401] tcp_listen_portaddr_hash hash table entries: 4096 (order: 5, 163840 bytes, linear)
[    0.161940] TCP established hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.171373] TCP bind hash table entries: 65536 (order: 9, 2097152 bytes, linear)
[    0.185358] TCP: Hash tables configured (established 65536 bind 65536)
[    0.191727] UDP hash table entries: 4096 (order: 6, 393216 bytes, linear)
[    0.199402] UDP-Lite hash table entries: 4096 (order: 6, 393216 bytes, linear)
[    0.207489] NET: Registered protocol family 1
[    0.211848] RPC: Registered named UNIX socket transport module.
[    0.217162] RPC: Registered udp transport module.
[    0.221929] RPC: Registered tcp transport module.
[    0.226704] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.233222] PCI: CLS 0 bytes, default 64
[    0.585553] workingset: timestamp_bits=62 max_order=21 bucket_order=0
[    0.600753] NFS: Registering the id_resolver key type
[    0.605171] Key type id_resolver registered
[    0.609375] Key type id_legacy registered
[    0.613468] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.620391] 9p: Installing v9fs 9p2000 file system support
[    0.626200] NET: Registered protocol family 38
[    0.630359] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
[    0.637773] io scheduler mq-deadline registered
[    0.642371] io scheduler kyber registered
[    0.707353] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.714231] 10010000.serial: ttySIF0 at MMIO 0x10010000 (irq = 1, base_baud = 0) is a SiFive UART v0
[    0.722691] BUG: spinlock bad magic on CPU#3, swapper/0/1
[    0.728140]  lock: 0xffffffe1f63ae018, .magic: 00000000, .owner: <none>/-1, .owner_cpu: 0
[    0.736388] CPU: 3 PID: 1 Comm: swapper/0 Not tainted 5.7.0-rc4-00001-g0319a09-dirty #2
[    0.744456] Call Trace:
[    0.746983] [<ffffffe0006024c6>] walk_stackframe+0x0/0xa4
[    0.752448] [<ffffffe0006026ac>] show_stack+0x2a/0x34
[    0.757577] [<ffffffe000869f68>] dump_stack+0x6a/0x84
[    0.762701] [<ffffffe000643060>] spin_dump+0x68/0x74
[    0.767730] [<ffffffe000642c80>] do_raw_spin_lock+0xb0/0xcc
[    0.773379] [<ffffffe000c3f528>] _raw_spin_lock_irqsave+0x20/0x2c
[    0.779538] [<ffffffe0008d9aec>] uart_add_one_port+0x2f6/0x406
[    0.785441] [<ffffffe0008e3974>] sifive_serial_probe+0x184/0x270
[    0.791527] [<ffffffe000a1323c>] platform_drv_probe+0x32/0x5e
[    0.797335] [<ffffffe000a11a2e>] really_probe+0x9a/0x21e
[    0.802719] [<ffffffe000a11cb4>] driver_probe_device+0x2e/0x88
[    0.808623] [<ffffffe000a11e86>] device_driver_attach+0x4c/0x50
[    0.814613] [<ffffffe000a11ec4>] __driver_attach+0x3a/0xac
[    0.820170] [<ffffffe000a1002a>] bus_for_each_dev+0x4a/0x72
[    0.825813] [<ffffffe000a1153a>] driver_attach+0x1a/0x22
[    0.831196] [<ffffffe000a1106c>] bus_add_driver+0x192/0x198
[    0.836840] [<ffffffe000a123b2>] driver_register+0x3a/0xd0
[    0.842397] [<ffffffe000a13202>] __platform_driver_register+0x3a/0x42
[    0.848911] [<ffffffe00001749c>] sifive_serial_init+0x30/0x50
[    0.854730] [<ffffffe0006000d0>] do_one_initcall+0x50/0x15a
[    0.860369] [<ffffffe000001c80>] kernel_init_freeable+0x16a/0x1de
[    0.866533] [<ffffffe000c3ad3c>] kernel_init+0x12/0x118
[    0.871830] [<ffffffe00060120a>] ret_from_exception+0x0/0xc
[    0.877524] printk: console [ttySIF0] enabled
[    0.877524] printk: console [ttySIF0] enabled
[    0.886258] printk: bootconsole [sbi0] disabled
[    0.886258] printk: bootconsole [sbi0] disabled

The kernel doesn't hang and boots to prompt.

===============================================================

Adding the missing spin_lock_init fixes the spinlock error. With the patch
the serial port is tested with basic sanity checks of baudrate change,
receive and transmit using:

Change baud rate : stty -F /dev/ttySIF0 9600
Recive mode	 : cat /dev/ttySIF0
Transmit mode	 : echo "Hello" > /dev/ttySIF0

Some of the relevant boot log:
=================================
[    0.642457] io scheduler kyber registered
[    0.704650] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.711531] 10010000.serial: ttySIF0 at MMIO 0x10010000 (irq = 1, base_baud = 0) is a SiFive UART v0
[    0.720013] printk: console [ttySIF0] enabled
[    0.720013] printk: console [ttySIF0] enabled
[    0.728755] printk: bootconsole [sbi0] disabled
[    0.728755] printk: bootconsole [sbi0] disabled
[    0.738182] 10011000.serial: ttySIF1 at MMIO 0x10011000 (irq = 10, base_baud = 0) is a SiFive UART v0
[    0.747674] [drm] radeon kernel modesetting enabled.
[    0.766381] loop: module loaded


Sagar Shrikant Kadam (1):
  tty: serial: add missing spin_lock_init for SiFive UART

 drivers/tty/serial/sifive.c | 1 +
 1 file changed, 1 insertion(+)

-- 
2.7.4


