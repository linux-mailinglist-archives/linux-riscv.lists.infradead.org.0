Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 844E61CC050
	for <lists+linux-riscv@lfdr.de>; Sat,  9 May 2020 12:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BQfgd3LTB0P3gQNwn8ZlqHCU4AUGblzaI+P5cGObV8o=; b=K3O
	VfF9aIO2XYoB9syXdcUyuCntdgDvhQnHCR4kRdPDNmOjiumPrH0UBNb4TRTt2/AQdF94OKvjfVVGR
	ddMKdxCJzKZfjlOLsanMSIJW5d0gw4Zl3WgDTuoB/4SbwdNeC5tpchD/3wmNwMpDZvhf/4rc4scDP
	09x/6QkrvWux1O0o7FvV3chqIYN1ItZ7Swv1wHHQyclkxKmpoPzNs5VgZ5l9PU4T128fPdxUP4ZlS
	SiymhH65ooK7JpoRkiRxedQ4/7nVimripAclxOjq2VfpWFSocwzuALd8dYtUM6MnA0Yt2QOWERSC2
	jQvKRvGiwFlOAhHrIe8hyQ6ZWfasrSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXMf4-0000RN-TR; Sat, 09 May 2020 10:24:50 +0000
Received: from mail-mw2nam12on2074.outbound.protection.outlook.com
 ([40.107.244.74] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXMez-0000QJ-M7
 for linux-riscv@lists.infradead.org; Sat, 09 May 2020 10:24:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=byxv1m7O2YY5fuEaaHy5xPXDKdEI28n4HCyQBfv6ohvvp8J5jOXXKmlivqFaoo0XE8eknkA13DL+l8T0RRa584iNu9PzfpbJgxbhxVy82hG+3nnHOa3xXWx+ZFgwPGvZlJzPNTQuLcRhBQM1t8ftNuRiai/9XypWjRd0dYe2HvZc/8bk0dyL8HBXhyrQXvMntf8i2g8HPgrjwgmlcAg5AwlLXVSlyiqV1xqcq7djq3dwNtp9wATBTwh9anspLe4f2rAv01FBsG6N5AVYq5ThEL+LESkGXS0Elt8kIjHZkm4y3MyGyPlJDNOMoloz5iUKVBoDSaeK8AmfsCN03Xcvpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BQfgd3LTB0P3gQNwn8ZlqHCU4AUGblzaI+P5cGObV8o=;
 b=kRNQW6Hz1goZDnwlL2KFfNGi9E0i+sMgK6iLCuleDWGOEbqR21Cejcct8g8QY/gr/aAeEr2Zeld62QJJvGUD/UiILCj8kw92oqebIcx90AKrDvYWibcpPc+zzlZDsKcUUMq1aMZZ8NmKozT6Ge2uQ+3PZhVtmnW5bJqhuRxHyU9ZX6VZMjMf9tp/KHw7H4nsmRtleNSqE368XSHEc4G+3TuHT6X7GdsYQSHoxi9+rGegMHmq4VUXLbrHwZnxWEVSbALENqEEh6ulxuozd6T6cSCdmGIpjFNeMv3iL7nLHrJz1iOobVRrjZ8HtiAfj77LSQ8r/6gq0MflCUB6T4T/UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BQfgd3LTB0P3gQNwn8ZlqHCU4AUGblzaI+P5cGObV8o=;
 b=J1nA3bRZSwJSVYQ6AXoFufzj7KRODEjc1R6XhFN62jRCQ/3Wl8+mFviHSGhICu+AKJPnlWh8//CGc205cZfKzONlzJaOMTXYS3nMXXr6eHlLMLSCz6O7K2uEbPyKPPOGEsmMnMVURYrKr8DsB6hcHw3mRIciXOEGAIVFeZQyKJk=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=sifive.com;
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2724.namprd13.prod.outlook.com (2603:10b6:408:83::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.13; Sat, 9 May
 2020 10:24:40 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929%6]) with mapi id 15.20.3000.011; Sat, 9 May 2020
 10:24:40 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/1] fix for spin lock bad magic on SiFive UART 
Date: Sat,  9 May 2020 03:24:11 -0700
Message-Id: <1589019852-21505-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: BYAPR01CA0056.prod.exchangelabs.com (2603:10b6:a03:94::33)
 To BN8PR13MB2611.namprd13.prod.outlook.com
 (2603:10b6:408:81::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BYAPR01CA0056.prod.exchangelabs.com (2603:10b6:a03:94::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.27 via Frontend Transport; Sat, 9 May 2020 10:24:38 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 866cdd54-2e80-4cf3-2102-08d7f4032e55
X-MS-TrafficTypeDiagnostic: BN8PR13MB2724:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN8PR13MB27245F6B7BE62B9C3539396099A30@BN8PR13MB2724.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 03982FDC1D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dRU3JvfsfM0TKtJ6EOq3lSm3PJnh64c9aY5TtHLlMuISHVIzPc/g6Ednozf0VdIY3CqWWOhnh2qdkRIY2E82Phe3DuIR5HT9QKrg5ffRr6BYTxIDB4mQRKIbhJ2lUdG36Rv+K6Q3WXgS9Jj9ipjBCR4vtFztae4dgRDZgqnuob6wEklg1aiT0yJZfqfU5Qs+/U6W1mMwxjqqifgLOfhWm4rtOjqaHhDgvpJxvTI12KSByuSj0OxhoJk5mZPzylF6sXXq8DM8jZ0/n5pwlh+pwW8H0f5CsOu+vff34wrM8LLwpddEtnn2p/Mn1IoN7+F14PP7IUFT3zTziL9HLbVViRH29zTTtH0TuxeKXHUmPtnosUDYlvdMVersPfaYcmc9yMMC+SIyuUATR3L207RoDSC6rGRiUqjRgJxezmOWhS4S7xFaW4DXmyenAT6dXEHMAE/FIm1s6UfiDmCP0iieQDIn1fENjsrnqCHCL751c4kzmuBSOAjQPIAa2evu/NUU5iIi5y4Dx8BJUL5Am+FBqmQ3g+1meTwY0kbdCzTiGCHJv1H75WrRzJrtojg/P4krS1u0yGFd/+rcczujtBVSZBPbLslUXfnUwFbLNQvDmPc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(376002)(396003)(366004)(346002)(39840400004)(136003)(33430700001)(86362001)(8676002)(107886003)(8936002)(36756003)(4326008)(956004)(2616005)(4743002)(30864003)(6486002)(186003)(16526019)(5660300002)(26005)(966005)(6666004)(316002)(478600001)(2906002)(66556008)(52116002)(66476007)(33440700001)(66946007)(7696005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: DNmfFYLLsLlk2bVd6n9TVzNDvbAdmI462PwG4QdgkDQKKODT4SFNez+UK3KP/UZUbBTsdcHlRD7ZwTTwV9d39b4fcTCIcYsAHdD65T5M6LrOI9X4HRJRxCTEihD5EwzgsUwW9xPm96TLqfhjlioNPRwgJ0YWVQM8oUNGuBPKcXzm1t7mOZq/Wow5eM9fj/yugnVtXa/MLCAm13G1zgqL/DHP2BsawOqoxCmQgTuZfuPRsMPgKzx8CMlDj9aBbFFVFvuWnczmxrevuPC6fhMdoeJPe9TPgKcp1nV2+vgkp/D8iP9gT7QYe8Et6PFKLdda06aNZ1iBAx4Kva2vwUcOPLVeCdts2LOqspaDPFot5IK2eSGoihwArpJWZeBfiljp8DPrMR4uR+XmlvQ5PlVQOY33DY0iAig6Md2b5UYfUdfpX8qrs0hTlbV7V0ZZVqopDbJ5SwdNgHnR3Rz7KS8FB1GKq2qSN5VDbAzzkjMOElc=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 866cdd54-2e80-4cf3-2102-08d7f4032e55
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2020 10:24:39.9632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /wt6OMsfy2jdB4FiYAjWEkqO64WefwnxWkjZrrqQpTv5m/iCPiGfW9/9Kq5fo4u376gb06o5C6HYeLARfuSK+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2724
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_032445_870528_0049EC03 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aou@eecs.berkeley.edu, anup.patel@wdc.com, atish.patra@wdc.com,
 palmer@dabbelt.com, Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
 paul.walmsley@sifive.com
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

[1] https://lore.kernel.org/linux-riscv/b9fe49483a903f404e7acc15a6efbef756db28ae.camel@wdc.com
 
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
Current HART ID        : 2
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
=> fatload mmc 0:2 0x82200000 hifive-unleashed-a00.dtb
=> bootm 0x80200000 - 0x82200000
21413948 bytes read in 11427 ms (1.8 MiB/s)
6987 bytes read in 12 ms (568.4 KiB/s)
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
   Using Device Tree in place at 0000000082200000, end 0000000082204b4a

Starting kernel ...

[    0.000000] OF: fdt: Ignoring memory range 0x80000000 - 0x80200000
[    0.000000] Linux version 5.7.0-rc4-00001-g3742e19-dirty (sagark2@sifive.com) (gcc version 8.2.0 (Buildroot 2018.11-rc2-00003-ga0787e9), GNU ld (GNU Binutils) 2.31.1) #4 SMP Sat May 9 01:40:31 PDT 2020
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
[    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [2]
[    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 3526361616960 ns
[    0.000006] sched_clock: 64 bits at 1000kHz, resolution 1000ns, wraps every 2199023255500ns
[    0.008556] Console: colour dummy device 80x25
[    0.012994] Calibrating delay loop (skipped), value calculated using timer frequency.. 2.00 BogoMIPS (lpj=4000)
[    0.023105] pid_max: default: 32768 minimum: 301
[    0.028305] Mount-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.035768] Mountpoint-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.045464] rcu: Hierarchical SRCU implementation.
[    0.050227] smp: Bringing up secondary CPUs ...
[    0.056194] smp: Brought up 1 node, 4 CPUs
[    0.060957] devtmpfs: initialized
[    0.065489] random: get_random_u32 called from bucket_table_alloc.isra.25+0x4e/0x160 with crng_init=0
[    0.065876] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.084229] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.091920] NET: Registered protocol family 16
[    0.112744] vgaarb: loaded
[    0.115132] SCSI subsystem initialized
[    0.119044] usbcore: registered new interface driver usbfs
[    0.124199] usbcore: registered new interface driver hub
[    0.129612] usbcore: registered new device driver usb
[    0.135587] clocksource: Switched to clocksource riscv_clocksource
[    0.149008] NET: Registered protocol family 2
[    0.153406] tcp_listen_portaddr_hash hash table entries: 4096 (order: 5, 163840 bytes, linear)
[    0.161944] TCP established hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.171377] TCP bind hash table entries: 65536 (order: 9, 2097152 bytes, linear)
[    0.185365] TCP: Hash tables configured (established 65536 bind 65536)
[    0.191736] UDP hash table entries: 4096 (order: 6, 393216 bytes, linear)
[    0.199410] UDP-Lite hash table entries: 4096 (order: 6, 393216 bytes, linear)
[    0.207498] NET: Registered protocol family 1
[    0.211846] RPC: Registered named UNIX socket transport module.
[    0.217172] RPC: Registered udp transport module.
[    0.221938] RPC: Registered tcp transport module.
[    0.226712] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.233231] PCI: CLS 0 bytes, default 64
[    0.585600] workingset: timestamp_bits=62 max_order=21 bucket_order=0
[    0.600796] NFS: Registering the id_resolver key type
[    0.605212] Key type id_resolver registered
[    0.609418] Key type id_legacy registered
[    0.613510] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.620434] 9p: Installing v9fs 9p2000 file system support
[    0.626244] NET: Registered protocol family 38
[    0.630401] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
[    0.637816] io scheduler mq-deadline registered
[    0.642413] io scheduler kyber registered
[    0.701522] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.708407] 10010000.serial: ttySIF0 at MMIO 0x10010000 (irq = 1, base_baud = 0) is a SiFive UART v0
[    0.716866] BUG: spinlock bad magic on CPU#3, swapper/0/1
[    0.722317]  lock: 0xffffffe1f63ae018, .magic: 00000000, .owner: <none>/-1, .owner_cpu: 0
[    0.730564] CPU: 3 PID: 1 Comm: swapper/0 Not tainted 5.7.0-rc4-00001-g3742e19-dirty #4
[    0.738632] Call Trace:
[    0.741160] [<ffffffe0006024c6>] walk_stackframe+0x0/0xa4
[    0.746624] [<ffffffe0006026ac>] show_stack+0x2a/0x34
[    0.751753] [<ffffffe000869f68>] dump_stack+0x6a/0x84
[    0.756877] [<ffffffe000643060>] spin_dump+0x68/0x74
[    0.761906] [<ffffffe000642c80>] do_raw_spin_lock+0xb0/0xcc
[    0.767555] [<ffffffe000c3f528>] _raw_spin_lock_irqsave+0x20/0x2c
[    0.773714] [<ffffffe0008d9aec>] uart_add_one_port+0x2f6/0x406
[    0.779617] [<ffffffe0008e3974>] sifive_serial_probe+0x184/0x270
[    0.785703] [<ffffffe000a1323c>] platform_drv_probe+0x32/0x5e
[    0.791512] [<ffffffe000a11a2e>] really_probe+0x9a/0x21e
[    0.796895] [<ffffffe000a11cb4>] driver_probe_device+0x2e/0x88
[    0.802799] [<ffffffe000a11e86>] device_driver_attach+0x4c/0x50
[    0.808789] [<ffffffe000a11ec4>] __driver_attach+0x3a/0xac
[    0.814346] [<ffffffe000a1002a>] bus_for_each_dev+0x4a/0x72
[    0.819989] [<ffffffe000a1153a>] driver_attach+0x1a/0x22
[    0.825372] [<ffffffe000a1106c>] bus_add_driver+0x192/0x198
[    0.831016] [<ffffffe000a123b2>] driver_register+0x3a/0xd0
[    0.836573] [<ffffffe000a13202>] __platform_driver_register+0x3a/0x42
[    0.843087] [<ffffffe00001749c>] sifive_serial_init+0x30/0x50
[    0.848906] [<ffffffe0006000d0>] do_one_initcall+0x50/0x15a
[    0.854545] [<ffffffe000001c80>] kernel_init_freeable+0x16a/0x1de
[    0.860709] [<ffffffe000c3ad3c>] kernel_init+0x12/0x118
[    0.866007] [<ffffffe00060120a>] ret_from_exception+0x0/0xc
[    0.871690] printk: console [ttySIF0] enabled
[    0.871690] printk: console [ttySIF0] enabled
[    0.880442] printk: bootconsole [sbi0] disabled
[    0.880442] printk: bootconsole [sbi0] disabled
[    0.889866] 10011000.serial: ttySIF1 at MMIO 0x10011000 (irq = 10, base_baud = 0) is a SiFive UART v0
[    0.899328] [drm] radeon kernel modesetting enabled.
[    0.918039] loop: module loaded
[    0.921025] sifive_spi 10040000.spi: mapped; irq=12, cs=1

The kernel doesn't hang and boots to prompt.

===============================================================
Adding the missing spin_lock_init fixes the spinlock error. With the patch
the serial port is tested with basic sanity checks of baudrate change,
receive and transmit using:

Change baud rate : stty -F /dev/ttySIF0 9600
Recive mode	 : cat /dev/ttySIF0
Transmit mode	 : echo "Hello" > /dev/ttySIF0

Some of the relevant working boot log:
===============================================================
[    0.697617] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.704441] 10010000.serial: ttySIF0 at MMIO 0x10010000 (irq = 1, base_baud = 0) is a SiFive UART v0
[    0.712916] printk: console [ttySIF0] enabled
[    0.712916] printk: console [ttySIF0] enabled
[    0.721663] printk: bootconsole [sbi0] disabled
[    0.721663] printk: bootconsole [sbi0] disabled
[    0.731077] 10011000.serial: ttySIF1 at MMIO 0x10011000 (irq = 10, base_baud = 0) is a SiFive UART v0

Change History:

V1 : Incorporated suggestions
- Initialised spin lock for sifive console as suggested.
- Updated reference link of reported issue from lore.kernel.org both in
  cover-letter and in patch.

V0 : Base patch.

Sagar Shrikant Kadam (1):
  tty: serial: add missing spin_lock_init for SiFive serial console

 drivers/tty/serial/sifive.c | 1 +
 1 file changed, 1 insertion(+)

-- 
2.7.4


