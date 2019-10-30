Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 455D9EA4A6
	for <lists+linux-riscv@lfdr.de>; Wed, 30 Oct 2019 21:21:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5vv4h4H7Ag+AuNvAL4xooV2YE60EVrWR9rZUU/443M=; b=KXLIhHy6OdJNM8
	myCRKnws2DpTspAXK+5A2XVA7uJmkJY3zzNjr5lBVJar8Bpm9yU5B8LE9toIPX7d2ZQP7VUHOeQv9
	myH2T6JKAFJfx0OCPQidvQa5ibtIMYdIdCGT/TULub4y3+ooNnTtArX6AhJ/Yx9UmAPCBcJWLzaQJ
	2jICcFBYZ/rwS7QGGMmXE89EVUZBLQyElKoNdV6Dtm9qlu8UgbyykUwiJmqkKSkYpK7J8+Bg/PJ0w
	PGo9IgSEoxrd+Ef93ZR4BR4ACdlpRhnWL+mvLTD6kmGEfHmxk1xsT2g0ah7RF2ZE+nvp5tpbohf50
	sGrTF1YWzuSOd/6/C7nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPuTD-0004Qc-OV; Wed, 30 Oct 2019 20:21:31 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPuT9-0004PU-48
 for linux-riscv@lists.infradead.org; Wed, 30 Oct 2019 20:21:29 +0000
Received: by mail-io1-xd41.google.com with SMTP id p6so4064501iod.7
 for <linux-riscv@lists.infradead.org>; Wed, 30 Oct 2019 13:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Fc32Tpzhv/pY8CFySKfpaSlJWa8P+A3FhQtYZ6etfWs=;
 b=J3ZBZvYGc25hM8YOYjTjPNO482Uw5JNi4jEQMuUWOspDsxZcSgEv0Ov51l5WC3FSwN
 awF3dBQ+i6U/QHNWn6v1rrtWHIESzx9TkOKtonQhgFXFyJOyqIHV/aBNN19W/XtJdf+0
 /0qhEv9ndaNjTUYL20vF0wqkToSKMaxRqhG6NhySxHaUTK6K49kwD2kRUJL05e2if4Q6
 AOO8OSOE6CYuyY1vWVKx72GXF+aQKsExAC8M7XfkMaBvfUlfTT62rpjMgAJo9px3C2Rh
 Gd6KkZUhXlHK6WXkE5EqMts/QBxmnI2TlqmW5TaKkmZwqhlH8OU26DKl7FISwrUG0WID
 ZH9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Fc32Tpzhv/pY8CFySKfpaSlJWa8P+A3FhQtYZ6etfWs=;
 b=Uc3Q2c6R5ACl6y9yE3Eo6Dcs33fPjmeAHi1r7LsW30KRghcjRj0hIIzWzRsCljKL5B
 weLkJH9izz9sXKXO5M6OFk6CLnXmCP4RGgXJ8yHcSX0uCdlintGipicxjlywORW4ECUM
 gdtWw835hujr1EYDGBLAum3n558qnesGc106EWTgbq/PJLjvRaUq+UUC8N7KDNft3C9c
 G/mr2Wfr7fUe7a2RJnf7SI+lySe0W4EbpaT4i/xmsq/SvigC7V0RfOiKkRU3vUgoMifV
 w3ngae5wlMyxUhrUqYN9CrV/FOF1YXVTEtB8R/LigW3XrFek6NCjZ548IeNg0/TC/KXd
 xQpA==
X-Gm-Message-State: APjAAAV4j7Y57AAKMHub5fZ37s5ejOrzcp477myxBgOgq/7LHzINKU7K
 wcgX+Pum1fFZvekuEqZ7HvpNiw==
X-Google-Smtp-Source: APXvYqxCiAVn345MUo4j2AuLQa0LPGWDgZVadrgdYQOOee1VJDIxMFwWO4TF/uJQe8S9EsYIDIqQzw==
X-Received: by 2002:a6b:ce03:: with SMTP id p3mr1621177iob.290.1572466883732; 
 Wed, 30 Oct 2019 13:21:23 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id r23sm101535ioj.7.2019.10.30.13.21.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 13:21:23 -0700 (PDT)
Date: Wed, 30 Oct 2019 13:21:21 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: RISC-V nommu support v6
In-Reply-To: <20191028121043.22934-1-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1910301311240.6452@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_132127_201995_D2352623 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

On Mon, 28 Oct 2019, Christoph Hellwig wrote:

> below is a series to support nommu mode on RISC-V.  For now this series
> just works under qemu with the qemu-virt platform, but Damien has also
> been able to get kernel based on this tree with additional driver hacks
> to work on the Kendryte KD210, but that will take a while to cleanup
> an upstream.
> 
> A git tree is available here:
> 
>     git://git.infradead.org/users/hch/riscv.git riscv-nommu.6

[ ... ]

> I've also pushed out a builtroot branch that can build a RISC-V nommu
> root filesystem here:
> 
>    git://git.infradead.org/users/hch/buildroot.git riscv-nommu.2

[ ... ]

I tried building this series from your git branch mentioned above, and 
booted it with a buildroot userspace built from your custom buildroot 
tree.  Am seeing some segmentation faults from userspace (below). 

Am still planning to merge your patches.

But I'm wondering whether you are seeing these segmentation faults also? 
Or is it something that might be specific to my test setup?


- Paul 


[    0.000000] Linux version 5.4.0-rc5-00012-gb66bae191a9b (paulw@pjw-001) (gcc version 9.2.1 20190909 (Debian 9.2.1-8)) #64 SMP Wed Oct 30 13:09:11 PDT 2019
[    0.000000] earlycon: uart8250 at MMIO 0x0000000010000000 (options '115200n8')
[    0.000000] printk: bootconsole [uart8250] enabled
[    0.000000] initrd not found or empty - disabling initrd
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000080000000-0x0000000083ffffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000080000000-0x0000000083ffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000080000000-0x0000000083ffffff]
[    0.000000] elf_hwcap is 0x112d
[    0.000000] percpu: max_distance=0x18000 too large for vmalloc space 0x0
[    0.000000] percpu: Embedded 12 pages/cpu s18080 r0 d31072 u49152
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 16160
[    0.000000] Kernel command line: root=/dev/vda rw earlycon=uart8250,mmio,0x10000000,115200n8 console=ttyS0
[    0.000000] Dentry cache hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    0.000000] Inode-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.000000] Sorting __ex_table...
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 62820K/65536K available (1068K kernel code, 117K rwdata, 189K rodata, 97K init, 126K bss, 2716K reserved, 0K cma-reserved)
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu: 	RCU restricting CPUs from NR_CPUS=8 to nr_cpu_ids=2.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=2
[    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0
[    0.000000] plic: mapped 53 interrupts with 2 handlers for 4 contexts.
[    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [1]
[    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x24e6a1710, max_idle_ns: 440795202120 ns
[    0.000206] sched_clock: 64 bits at 10MHz, resolution 100ns, wraps every 4398046511100ns
[    0.004614] Console: colour dummy device 80x25
[    0.009015] Calibrating delay loop (skipped), value calculated using timer frequency.. 20.00 BogoMIPS (lpj=40000)
[    0.010069] pid_max: default: 4096 minimum: 301
[    0.011429] Mount-cache hash table entries: 512 (order: 0, 4096 bytes, linear)
[    0.012301] Mountpoint-cache hash table entries: 512 (order: 0, 4096 bytes, linear)
[    0.040643] rcu: Hierarchical SRCU implementation.
[    0.043654] smp: Bringing up secondary CPUs ...
[    0.048887] smp: Brought up 1 node, 2 CPUs
[    0.060191] devtmpfs: initialized
[    0.069148] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.070136] futex hash table entries: 16 (order: -2, 1024 bytes, linear)
[    0.096905] clocksource: Switched to clocksource riscv_clocksource
[    0.130551] workingset: timestamp_bits=62 max_order=14 bucket_order=0
[    0.135947] Serial: 8250/16550 driver, 1 ports, IRQ sharing disabled
[    0.144355] printk: console [ttyS0] disabled
[    0.145926] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq = 10, base_baud = 230400) is a 16550A
[    0.147596] printk: console [ttyS0] enabled
[    0.147596] printk: console [ttyS0] enabled
[    0.148466] printk: bootconsole [uart8250] disabled
[    0.148466] printk: bootconsole [uart8250] disabled
[    0.163272] virtio_blk virtio0: [vda] 122880 512-byte logical blocks (62.9 MB/60.0 MiB)
[    0.169270] random: get_random_bytes called from 0x000000008001d068 with crng_init=0
[    0.189781] EXT2-fs (vda): warning: mounting unchecked fs, running e2fsck is recommended
[    0.192221] VFS: Mounted root (ext2 filesystem) on device 254:0.
[    0.195277] devtmpfs: mounted
[    0.207866] Freeing unused kernel memory: 96K
[    0.208270] This architecture does not have kernel memory protection.
[    0.209017] Run /sbin/init as init process
[    0.255239] mount[24]: unhandled signal 11 code 0x2 at 0x00000000836000e4
[    0.256504] CPU: 1 PID: 24 Comm: mount Not tainted 5.4.0-rc5-00012-gb66bae191a9b #64
[    0.257783] epc: 00000000836000e4 ra : 000000008361c1d8 sp : 000000008368adb0
[    0.258718]  gp : 0000000083671300 tp : 0000000000000000 t0 : 0000000000000032
[    0.259482]  t1 : 8101010101010100 t2 : 0000000000000007 s0 : 0000000000000001
[    0.260566]  s1 : 0000000000000001 a0 : 0000000000000000 a1 : 000000008368af96
[    0.261521]  a2 : 000000008368af8c a3 : 0000000000008000 a4 : 0000000000000000
[    0.262270]  a5 : 0000000000084000 a6 : 78fef8fefefcf8f8 a7 : 0000000000000028
[    0.263215]  s2 : 0000000083683fd0 s3 : fffffffffffffff8 s4 : 0000000083625dcc
[    0.264160]  s5 : 0000000000000001 s6 : 0000000000000001 s7 : 0000000000000001
[    0.265075]  s8 : 0000000000000000 s9 : 0000000000000000 s10: 0000000000000000
[    0.266009]  s11: 0000000000000000 t3 : 000000000000003d t4 : 000000000000002b
[    0.267201]  t5 : 0000000000000002 t6 : 0000000000000001
[    0.267957] status: 0000000000004080 badaddr: 0000000000084010 cause: 0000000000000005
[    0.300301] mount[25]: unhandled signal 11 code 0x2 at 0x00000000836000e4
[    0.301112] CPU: 1 PID: 25 Comm: mount Not tainted 5.4.0-rc5-00012-gb66bae191a9b #64
[    0.301888] epc: 00000000836000e4 ra : 000000008361c1d8 sp : 000000008368adc0
[    0.302530]  gp : 0000000083671300 tp : 0000000000000000 t0 : 0000000000000200
[    0.303192]  t1 : 8101010101010100 t2 : 0000000000000007 s0 : 0000000000000001
[    0.303847]  s1 : 0000000000000001 a0 : 0000000000000000 a1 : 00000000836866b6
[    0.304518]  a2 : 00000000836866b8 a3 : 0000000000208020 a4 : 0000000000000000
[    0.305371]  a5 : 0000000000084000 a6 : 80fefcf8fcf0f8fe a7 : 0000000000000028
[    0.306045]  s2 : 0000000083683fd0 s3 : fffffffffffffff8 s4 : 0000000083625dcc
[    0.306714]  s5 : 0000000000000001 s6 : 0000000000000001 s7 : 0000000000000001
[    0.307378]  s8 : 0000000000000000 s9 : 0000000000000000 s10: 0000000000000000
[    0.308029]  s11: 0000000000000000 t3 : 0000000083674474 t4 : 0000000000000000
[    0.308885]  t5 : 0000000000000001 t6 : 0000000000000100
[    0.309727] status: 0000000000004080 badaddr: 0000000000084010 cause: 0000000000000005
[    0.324586] mkdir[27]: unhandled signal 11 code 0x2 at 0x00000000836000e4
[    0.325692] CPU: 1 PID: 27 Comm: mkdir Not tainted 5.4.0-rc5-00012-gb66bae191a9b #64
[    0.326902] epc: 00000000836000e4 ra : 000000008361c1d8 sp : 000000008368adb0
[    0.328001]  gp : 0000000083671300 tp : 0000000000000000 t0 : 0000000000000003
[    0.329058]  t1 : 8101010101010100 t2 : 0000000000000007 s0 : 0000000000000001
[    0.330086]  s1 : 0000000000000001 a0 : 0000000000000000 a1 : 000000008368af93
[    0.331186]  a2 : 00000000000001ff a3 : 0000000000000000 a4 : 0000000000000000
[    0.332312]  a5 : 0000000000084000 a6 : 0000000083686320 a7 : 0000000000000022
[    0.333299]  s2 : 0000000083683fd0 s3 : fffffffffffffff8 s4 : 0000000083625dcc
[    0.334445]  s5 : 0000000000000001 s6 : 0000000000000001 s7 : 0000000000000001
[    0.335564]  s8 : 0000000000000000 s9 : 0000000000000000 s10: 0000000000000000
[    0.336671]  s11: 0000000000000000 t3 : 0000000083674474 t4 : 0000000000000000
[    0.337603]  t5 : 0000000000000018 t6 : 2f20730000000000
[    0.338302] status: 0000000000004080 badaddr: 0000000000084010 cause: 0000000000000005
[    0.402732] mount[28]: unhandled signal 11 code 0x2 at 0x00000000836000e4
[    0.405458] CPU: 1 PID: 28 Comm: mount Not tainted 5.4.0-rc5-00012-gb66bae191a9b #64
[    0.406238] epc: 00000000836000e4 ra : 000000008361c1d8 sp : 000000008368add0
[    0.406894]  gp : 0000000083671300 tp : 0000000000000000 t0 : 0000000000000000
[    0.407561]  t1 : 000000008359d038 t2 : 0000000000000009 s0 : 0000000000000001
[    0.408269]  s1 : 0000000000000001 a0 : 0000000000000000 a1 : 00000000000001fb
[    0.409161]  a2 : 0000000083670b60 a3 : 00000000000001fc a4 : 0000000000000000
[    0.409879]  a5 : 0000000000084000 a6 : 0000000000000fc8 a7 : 000000000000003f
[    0.410589]  s2 : 0000000083683fd0 s3 : fffffffffffffff8 s4 : 0000000083625dcc
[    0.411284]  s5 : 0000000000000001 s6 : 0000000000000001 s7 : 0000000000000001
[    0.411973]  s8 : 0000000000000000 s9 : 0000000000000000 s10: 0000000000000000
[    0.412678]  s11: 0000000000000000 t3 : 1999999999999999 t4 : 00000000836863cc
[    0.413489]  t5 : 0000000000000005 t6 : 0000000000000000
[    0.414040] status: 0000000000004080 badaddr: 0000000000084010 cause: 0000000000000005
can't run '/sbin/swapon': No such file or directory
[    0.456229] ln[30]: unhandled signal 11 code 0x2 at 0x00000000837000e4
[    0.457222] CPU: 1 PID: 30 Comm: ln Not tainted 5.4.0-rc5-00012-gb66bae191a9b #64
[    0.458355] epc: 00000000837000e4 ra : 000000008371c1d8 sp : 000000008378adb0
[    0.459242]  gp : 0000000083771300 tp : 0000000000000000 t0 : 0000000000000031
[    0.459904]  t1 : 8101010101010100 t2 : 0000000000000007 s0 : 0000000000000001
[    0.460576]  s1 : 0000000000000001 a0 : 0000000000000000 a1 : 0000000083771980
[    0.461288]  a2 : 000000008378af97 a3 : 0000000000000000 a4 : 0000000000000000
[    0.462059]  a5 : 0000000000084000 a6 : 0000000083786320 a7 : 0000000000000024
[    0.462817]  s2 : 0000000083783fd0 s3 : fffffffffffffff8 s4 : 0000000083725dcc
[    0.463500]  s5 : 0000000000000001 s6 : 0000000000000001 s7 : 0000000000000001
[    0.464242]  s8 : 0000000000000000 s9 : 0000000000000000 s10: 0000000000000000
[    0.464935]  s11: 0000000000000000 t3 : 000000000000003d t4 : 000000000000002b
[    0.465699]  t5 : 0000000000000002 t6 : 0000000000000001
[    0.466280] status: 0000000000004080 badaddr: 0000000000084010 cause: 0000000000000005
[    0.473174] ln[31]: unhandled signal 11 code 0x2 at 0x00000000830000e4
[    0.473764] CPU: 0 PID: 31 Comm: ln Not tainted 5.4.0-rc5-00012-gb66bae191a9b #64
[    0.474377] epc: 00000000830000e4 ra : 000000008301c1d8 sp : 000000008308adb0
[    0.474957]  gp : 0000000083071300 tp : 0000000000000000 t0 : 0000000000000031
[    0.475437]  t1 : 8101010101010100 t2 : 0000000000000007 s0 : 0000000000000001
[    0.475976]  s1 : 0000000000000001 a0 : 0000000000000000 a1 : 0000000083071980
[    0.476462]  a2 : 000000008308af94 a3 : 0000000000000000 a4 : 0000000000000000
[    0.477126]  a5 : 0000000000084000 a6 : 0000000083086320 a7 : 0000000000000024
[    0.477761]  s2 : 0000000083083fd0 s3 : fffffffffffffff8 s4 : 0000000083025dcc
[    0.478315]  s5 : 0000000000000001 s6 : 0000000000000001 s7 : 0000000000000001
[    0.478845]  s8 : 0000000000000000 s9 : 0000000000000000 s10: 0000000000000000
[    0.479341]  s11: 0000000000000000 t3 : 000000000000003d t4 : 000000000000002b
[    0.479844]  t5 : 0000000000000002 t6 : 0000000000000001
[    0.480221] status: 0000000000004080 badaddr: 0000000000084010 cause: 0000000000000005
[    0.490205] ln[32]: unhandled signal 11 code 0x2 at 0x00000000830000e4
[    0.491256] CPU: 1 PID: 32 Comm: ln Not tainted 5.4.0-rc5-00012-gb66bae191a9b #64
[    0.492336] epc: 00000000830000e4 ra : 000000008301c1d8 sp : 000000008308adb0
[    0.493307]  gp : 0000000083071300 tp : 0000000000000000 t0 : 0000000000000031
[    0.494339]  t1 : 8101010101010100 t2 : 0000000000000007 s0 : 0000000000000001
[    0.495393]  s1 : 0000000000000001 a0 : 0000000000000000 a1 : 0000000083071980
[    0.496435]  a2 : 000000008308af93 a3 : 0000000000000000 a4 : 0000000000000000
[    0.497320]  a5 : 0000000000084000 a6 : 0000000083086320 a7 : 0000000000000024
[    0.498423]  s2 : 0000000083083fd0 s3 : fffffffffffffff8 s4 : 0000000083025dcc
[    0.499438]  s5 : 0000000000000001 s6 : 0000000000000001 s7 : 0000000000000001
[    0.500446]  s8 : 0000000000000000 s9 : 0000000000000000 s10: 0000000000000000
[    0.501366]  s11: 0000000000000000 t3 : 000000000000003d t4 : 000000000000002b
[    0.502388]  t5 : 0000000000000002 t6 : 0000000000000001
[    0.503105] status: 0000000000004080 badaddr: 0000000000084010 cause: 0000000000000005
[    0.509043] ln[33]: unhandled signal 11 code 0x2 at 0x00000000831000e4
[    0.510043] CPU: 1 PID: 33 Comm: ln Not tainted 5.4.0-rc5-00012-gb66bae191a9b #64
[    0.511149] epc: 00000000831000e4 ra : 000000008311c1d8 sp : 000000008318adb0
[    0.512172]  gp : 0000000083171300 tp : 0000000000000000 t0 : 0000000000000031
[    0.513281]  t1 : 8101010101010100 t2 : 0000000000000007 s0 : 0000000000000001
[    0.514394]  s1 : 0000000000000001 a0 : 0000000000000000 a1 : 0000000083171980
[    0.515462]  a2 : 000000008318af93 a3 : 0000000000000000 a4 : 0000000000000000
[    0.516528]  a5 : 0000000000084000 a6 : 0000000083186320 a7 : 0000000000000024
[    0.517673]  s2 : 0000000083183fd0 s3 : fffffffffffffff8 s4 : 0000000083125dcc
[    0.518745]  s5 : 0000000000000001 s6 : 0000000000000001 s7 : 0000000000000001
[    0.519826]  s8 : 0000000000000000 s9 : 0000000000000000 s10: 0000000000000000
[    0.520958]  s11: 0000000000000000 t3 : 000000000000003d t4 : 000000000000002b
[    0.522032]  t5 : 0000000000000002 t6 : 0000000000000001
[    0.522835] status: 0000000000004080 badaddr: 0000000000084010 cause: 0000000000000005
[    0.531820] hostname[34]: unhandled signal 11 code 0x2 at 0x00000000831000e4
[    0.532482] CPU: 0 PID: 34 Comm: hostname Not tainted 5.4.0-rc5-00012-gb66bae191a9b #64
[    0.533301] epc: 00000000831000e4 ra : 000000008311c1d8 sp : 000000008318adc0
[    0.533936]  gp : 0000000083171300 tp : 0000000000000000 t0 : 0000000000000002
[    0.534545]  t1 : 000000008318ada0 t2 : 0000000000000007 s0 : 0000000000000001
[    0.535092]  s1 : 0000000000000001 a0 : 0000000000000000 a1 : 0000000083788008
[    0.535593]  a2 : 0000000000001000 a3 : 0000000000000003 a4 : 0000000000000000
[    0.536104]  a5 : 0000000000084000 a6 : 0000000000000001 a7 : 000000000000003f
[    0.536609]  s2 : 0000000083183fd0 s3 : fffffffffffffff8 s4 : 0000000083125dcc
[    0.537208]  s5 : 0000000000000001 s6 : 0000000000000001 s7 : 0000000000000001
[    0.537786]  s8 : 0000000000000000 s9 : 0000000000000000 s10: 0000000000000000
[    0.538312]  s11: 0000000000000000 t3 : 0000000083174474 t4 : 0000000000000000
[    0.538828]  t5 : 0000000000000018 t6 : 462d200000000000
[    0.539225] status: 0000000000004080 badaddr: 0000000000084010 cause: 0000000000000005
[    0.574716] [[36]: unhandled signal 11 code 0x2 at 0x00000000832000e4
[    0.575424] CPU: 0 PID: 36 Comm: [ Not tainted 5.4.0-rc5-00012-gb66bae191a9b #64
[    0.575968] epc: 00000000832000e4 ra : 000000008321c1d8 sp : 000000008328ad80
[    0.576498]  gp : 0000000083271300 tp : 0000000000000000 t0 : 0000000000000002
[    0.577166]  t1 : 000000008308d108 t2 : 0000000000000007 s0 : 0000000000000001
[    0.577723]  s1 : 0000000000000001 a0 : 0000000000000001 a1 : 000000008308dfe8
[    0.578263]  a2 : 0000000000000108 a3 : 000000008308d108 a4 : 0000000000000000
[    0.578814]  a5 : 0000000000084000 a6 : 0000000000001000 a7 : 0000000000000018
[    0.579333]  s2 : 0000000083283fd0 s3 : fffffffffffffff8 s4 : 0000000083225dcc
[    0.579857]  s5 : 0000000000000001 s6 : 0000000000000001 s7 : 0000000000000001
[    0.580386]  s8 : 0000000000000008 s9 : 000000000000002f s10: 000000000000002f
[    0.581058]  s11: 0000000000000000 t3 : 0000000083274474 t4 : 0000000000000000
[    0.581625]  t5 : 0000000000000018 t6 : 74696e0000000000
[    0.582031] status: 0000000000004080 badaddr: 0000000000084010 cause: 0000000000000005
SEGV
SEGV
SEGV
sh: can't execute 'start-stop-daemon': No such file or directory
SEGV
FAIL
SEGV
SEGV
SEGV
SEGV
sh: can't execute 'start-stop-daemon': No such file or directory
SEGV
FAIL
SEGV
SEGV
SEGV
SEGV
SEGV
SEGV
sh: can't execute '/sbin/ifup': No such file or directory
SEGV
FAIL
SEGV

Welcome to Buildroot
buildroot login: QEMU: Terminated

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
