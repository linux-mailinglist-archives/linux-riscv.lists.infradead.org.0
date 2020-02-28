Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06106174105
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Feb 2020 21:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OyHqpR5QQdY3gr5xJKPxvrTF9C82b4evHBQ5i4V95s4=; b=U9UyccMkY2FPlP
	szDtoTYabkVA5DnILw279+TeA83bWY6XZ33IIWiPv2Zvy9nfGXCk/rDncXuZxvahRMxH+bgwD82HV
	SfZ0ho/YWyhNi1m732T41MBk86jMkmnuruana6+6wFfawTjQk+QOF0tJ27CLejs/Rye6XWmhVdmbX
	b/Cfuxa9WntSF1A8bxH1k0jFFtUODtHyp3oJVQKy/RKnnLWgOGRpZpCjRYhe1VKK1BgH6jG96DJwR
	E730ske0Vx0bPZ5NUGmbIyU24uNU3FcPMMgYQ0bhRmxOnA0eVfQWPYC4Kpx7wNHKexGEovJoosD34
	NAyOVxfFHHIyakQ28x2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mJX-0007zy-5X; Fri, 28 Feb 2020 20:32:51 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mJT-0007zA-KZ
 for linux-riscv@lists.infradead.org; Fri, 28 Feb 2020 20:32:49 +0000
Received: by mail-qk1-x741.google.com with SMTP id z12so4252458qkg.12
 for <linux-riscv@lists.infradead.org>; Fri, 28 Feb 2020 12:32:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OyHqpR5QQdY3gr5xJKPxvrTF9C82b4evHBQ5i4V95s4=;
 b=GyjeyB4//eqIesJEetJ+mG2E7AervR5HtdJ1e3jk6uJWDBmvhzZFsp0mWlhOGnZ0pa
 EBpxPuRg/AM+OfVyklO9gK8T+YzI4GEEXyFc5b6APPKudWQy6yYJlndkcqbyT1KyxTVn
 z3y8LdoAWyIsnRBcfGRxA2vNT9O0fE4CQoopos1dytCiRV/IEuAqk+WNN6sZy4KhKvnu
 ZihpCi1wab1axAVAMrmF3Eihdwk+ZozTXHfyYi/YfHtY3FMSXAc/HI5yqBj/pIQiILeO
 Ga4BZnuT+tLVeQ/AvERcyUIwZm4BvJcLHte15/I6AOQRV1lxEHatqgK7Cab6UKV8bYpJ
 IyGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=OyHqpR5QQdY3gr5xJKPxvrTF9C82b4evHBQ5i4V95s4=;
 b=IeZtTNGwBtzJPLUFemWlTRmOg9E5+q/hKsBFDhD6rbT5bHks7rTeou384Y04paUqKL
 r+zsvq2i40WpMsuRJ5fd6yWnGywbgX8gmkJYCcPTDFhikPV/5i1DdNmb3XkRIGUGNH9k
 mtQUSTaflP+o4E0vHcLYfpEN6QEznL9/qkLBLjnz5Y8JdHuxE0RFngEXyCt/b3dX9tWX
 XX304jr+GvL+3nEKY1U7cPYP3kM5aiGQvl1UOh/i+zb9HkSx6gmtUreNwmH/PFftNozZ
 VJDj6hS2Yno7JaV9L2B1MpnxJX8Sd5JwZ47pqx6bjuvXzxf2bu8wtkr0MwVo2cm0BNl4
 Gmdg==
X-Gm-Message-State: APjAAAVkySy96DRW3huOWpESyHuAE6MZkI//DxsF+DBiZTLPdE/kkgiC
 mTCLJOHekroTzg+AzVtCThMzS1Eo
X-Google-Smtp-Source: APXvYqywwgIgqcAyG4QXBpdE6AW94kIR//EBGbfrh8rSeEGFwkQlr2T4xUAtV0Iy1jep5STfFFyRog==
X-Received: by 2002:a37:a9c3:: with SMTP id s186mr5904224qke.118.1582921965503; 
 Fri, 28 Feb 2020 12:32:45 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id s2sm5542280qkj.59.2020.02.28.12.32.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 12:32:44 -0800 (PST)
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
To: Damien Le Moal <damien.lemoal@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@dabbelt.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
From: Sean Anderson <seanga2@gmail.com>
Autocrypt: addr=seanga2@gmail.com; prefer-encrypt=mutual; keydata=
 mQENBFe74PkBCACoLC5Zq2gwrDcCkr+EPGsT14bsxrW07GiYzQhLCgwnPdEpgU95pXltbFhw
 46GfyffABWxHKO2x+3L1S6ZxC5AiKbYXo7lpnTBYjamPWYouz+VJEVjUx9aaSEByBah5kX6a
 lKFZWNbXLAJh+dE1HFaMi3TQXXaInaREc+aO1F7fCa2zNE75ja+6ah8L4TPRFZ2HKQzve0/Y
 GXtoRw97qmnm3U36vKWT/m2AiLF619F4T1mHvlfjyd9hrVwjH5h/2rFyroXVXBZHGA9Aj8eN
 F2si35dWSZlIwXkNu9bXp0/pIu6FD0bI+BEkD5S7aH1G1iAcMFi5Qq2RNa041DfQSDDHABEB
 AAG0K1NlYW4gR2FsbGFnaGVyIEFuZGVyc29uIDxzZWFuZ2EyQGdtYWlsLmNvbT6JAVcEEwEK
 AEECGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4ACGQEWIQSQYR1bzo1I0gPoYCg+6I/stKEQ
 bgUCXT+S2AUJB2TlXwAKCRA+6I/stKEQbhNOB/9ooea0hU9Sgh7PBloU6CgaC5mlqPLB7NTp
 +JkB+nh3Fqhk+qLZwzEynnuDLl6ESpVHIc0Ym1lyF4gT3DsrlGT1h0Gzw7vUwd1+ZfN0CuIx
 Rn861U/dAUjvbtN5kMBqOI4/5ea+0r7MACcIVnKF/wMXBD8eypHsorT2sJTzwZ6DRCNP70C5
 N1ahpqqNmXe0uLdP0pu55JCqhrGw2SinkRMdWyhSxT56uNwIVHGhLTqH7Q4t1N6G1EH626qa
 SvIJsWlNpll6Y3AYLDw2/Spw/hqieS2PQ/Ky3rPZnvJt7/aSNYsKoFGX0yjkH67Uq8Lx0k1L
 w8jpXnbEPQN3A2ZJCbeMuQENBF0/k2UBCADhvSlHblNc/aRAWtCFDblCJJMN/8Sd7S9u4ZRS
 w1wIB4tTF7caxc8yfCHa+FjMFeVu34QPtMOvd/gfHz0mr+t0PiTAdDSbd6o7tj+g5ylm+FhT
 OTUtJQ6mx6L9GzMmIDEbLxJMB9RfJaL2mT5JkujKxEst6nlHGV/lEQ54xBl5ImrPvuR5Dbnr
 zWQYlafb1IC5ZFwSMpBeSfhS7/kGPtFY3NkpLrii/CF+ME0DYYWxlkDIycqF3fsUGGfb3HIq
 z2l95OB45+mCs9DrIDZXRT6mFjLcl35UzuEErNIskCl9NKlbvAMAl+gbDH275SnE44ocC4qu
 0tMe7Z5jpOy6J8nNABEBAAGJATwEGAEKACYWIQSQYR1bzo1I0gPoYCg+6I/stKEQbgUCXT+T
 ZQIbDAUJAeEzgAAKCRA+6I/stKEQbjAGB/4mYRqZTTEFmcS+f+8zsmjt2CfWvm38kR+sJFWB
 vz82pFiUWbUM5xvcuOQhz698WQnIazbDGSYaOipyVNS52YiuYJDqMszzgw++DrcSuu0oRYWN
 EWCkJjxMqjGg8uY0OZ6FJG+gYRN5wMFErGfV1OqQ7l00FYA9OzpOEuW9PzPZEutFnAbbh77i
 zvxbQtT7IJCL24A4KutNYKmWg98im4mCzQcJCxE86Bv69ErLVPUyYbp4doLadScilXlvkkjL
 iq1wOt3rRzOuw+qnWVgWGBPxdDftz0Wck941tYF9XE0aMgkf4o1sGoDZFUFPCQdfEYPzzV7O
 S5hN3/mP5UeooFHb
Message-ID: <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
Date: Fri, 28 Feb 2020 15:32:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200212103432.660256-1-damien.lemoal@wdc.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_123247_704914_73D18CEE 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

When booting from U-Boot I get an OOM. Perhaps this is related to the
second cpu not coming up?

=3D> go 80000000
## Starting application at 0x80000000 ...
[    0.000000] Linux version 5.6.0-rc1-00054-gd32122774dab (sean@godwin) =
(gcc version 9.2.0 (GCC)) #12 SMP Fri Feb 28 14:34:45 EST 2020
[    0.000000] earlycon: sifive0 at MMIO 0x0000000038000000 (options '')
[    0.000000] printk: bootconsole [sifive0] enabled
[    0.000000] initrd not found or empty - disabling initrd
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000080000000-0x00000000807fffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000080000000-0x00000000807fffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000080000000-0x00000000807=
fffff]
[    0.000000] elf_hwcap is 0x112d
[    0.000000] percpu: max_distance=3D0x18000 too large for vmalloc space=
 0x0
[    0.000000] percpu: Embedded 12 pages/cpu s18272 r0 d30880 u49152
[    0.000000] Built 1 zonelists, mobility grouping off.  Total pages: 20=
20
[    0.000000] Kernel command line: earlycon console=3DttySIF0
[    0.000000] Dentry cache hash table entries: 1024 (order: 1, 8192 byte=
s, linear)
[    0.000000] Inode-cache hash table entries: 512 (order: 0, 4096 bytes,=
 linear)
[    0.000000] Sorting __ex_table...
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 5528K/8192K available (918K kernel code, 106K rwda=
ta, 166K rodata, 1129K init, 91K bss, 2664K reserved, 0K cma-reserved)
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is=
 25 jiffies.
[    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0
[    0.000000] plic: mapped 65 interrupts with 2 handlers for 4 contexts.=

[    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] har=
tid [0]
[    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff m=
ax_cycles: 0x3990be68b, max_idle_ns: 881590404272 ns
[    0.000015] sched_clock: 64 bits at 7MHz, resolution 128ns, wraps ever=
y 4398046511054ns
[    0.008238] Console: colour dummy device 80x25
[    0.012477] Calibrating delay loop (skipped), value calculated using t=
imer frequency.. 15.60 BogoMIPS (lpj=3D31200)
[    0.022684] pid_max: default: 4096 minimum: 301
[    0.027302] Mount-cache hash table entries: 512 (order: 0, 4096 bytes,=
 linear)
[    0.034423] Mountpoint-cache hash table entries: 512 (order: 0, 4096 b=
ytes, linear)
[    0.044826] rcu: Hierarchical SRCU implementation.
[    0.049623] smp: Bringing up secondary CPUs ...
[    1.083970] CPU1: failed to come online
[    1.087079] smp: Brought up 1 node, 1 CPU
[    1.092006] devtmpfs: initialized
[    1.098586] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffff=
fff, max_idle_ns: 7645041785100000 ns
[    1.107609] futex hash table entries: 16 (order: -2, 1024 bytes, linea=
r)
[    1.115619] Kendryte K210 SoC sysctl
[    1.129362] clocksource: Switched to clocksource riscv_clocksource
[    1.385690] swapper/0: page allocation failure: order:9, mode:0x100cc2=
(GFP_HIGHUSER), nodemask=3D(null)
[    1.394224] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.6.0-rc1-00054-=
gd32122774dab #12
[    1.402129] Call Trace:
[    1.404565] [<000000008011c2f2>] 0x000000008011c2f2
[    1.409426] [<000000008011c436>] 0x000000008011c436
[    1.414287] [<00000000801ed86e>] 0x00000000801ed86e
[    1.419150] [<00000000801740c0>] 0x00000000801740c0
[    1.424012] [<00000000801743d4>] 0x00000000801743d4
[    1.428874] [<00000000801746da>] 0x00000000801746da
[    1.433736] [<00000000801ababe>] 0x00000000801ababe
[    1.438598] [<00000000801abbf2>] 0x00000000801abbf2
[    1.443460] [<000000008018b06a>] 0x000000008018b06a
[    1.448322] [<0000000080176de0>] 0x0000000080176de0
[    1.453184] [<0000000080176fd2>] 0x0000000080176fd2
[    1.458047] [<0000000080001b8a>] 0x0000000080001b8a
[    1.462909] [<000000008000145a>] 0x000000008000145a
[    1.467771] [<00000000800014b0>] 0x00000000800014b0
[    1.472633] [<000000008000e7cc>] 0x000000008000e7cc
[    1.477495] [<000000008000e80c>] 0x000000008000e80c
[    1.482357] [<0000000080001e44>] 0x0000000080001e44
[    1.487219] [<0000000080000a80>] 0x0000000080000a80
[    1.492081] [<0000000080000ce4>] 0x0000000080000ce4
[    1.496943] [<00000000801fd934>] 0x00000000801fd934
[    1.501805] [<000000008011b304>] 0x000000008011b304
[    1.506918] Mem-Info:
[    1.508957] active_anon:0 inactive_anon:0 isolated_anon:0
[    1.508957]  active_file:0 inactive_file:0 isolated_file:0
[    1.508957]  unevictable:315 dirty:0 writeback:0 unstable:0
[    1.508957]  slab_reclaimable:0 slab_unreclaimable:215
[    1.508957]  mapped:0 shmem:0 pagetables:0 bounce:0
[    1.508957]  free:795 free_pcp:0 free_cma:0
[    1.539593] Node 0 active_anon:0kB inactive_anon:0kB active_file:0kB i=
nactive_file:0kB unevictable:1260kB isolated(anon):0kB isolated(file):0kB=
 mapped:0kB dirty:0kB writeback:0kB shmem:0kB writeback_tmp:0kB unstable:=
0kB all_unreclaimable? no
[    1.560939] DMA32 free:3180kB min:296kB low:368kB high:440kB reserved_=
highatomic:0KB active_anon:0kB inactive_anon:0kB active_file:0kB inactive=
_file:0kB unevictable:1260kB writepending:0kB present:8192kB managed:5528=
kB mlocked:0kB kernel_stack:168kB pagetables:0kB bounce:0kB free_pcp:0kB =
local_pcp:0kB free_cma:0kB
[    1.588696] lowmem_reserve[]: 0 0 0
[    1.592118] DMA32: 1*4kB (U) 1*8kB (M) 0*16kB 1*32kB (U) 1*64kB (U) 2*=
128kB (UM) 1*256kB (U) 1*512kB (M) 2*1024kB (UM) 0*2048kB 0*4096kB =3D 31=
80kB
[    1.605162] 328 total pagecache pages
[    1.608788] 2048 pages RAM
[    1.611479] 0 pages HighMem/MovableOnly
[    1.615299] 666 pages reserved
[    1.743951] swapper/0 invoked oom-killer: gfp_mask=3D0x100cc2(GFP_HIGH=
USER), order=3D0, oom_score_adj=3D0
[    1.752280] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.6.0-rc1-00054-=
gd32122774dab #12
[    1.760209] Call Trace:
[    1.762645] [<000000008011c2f2>] 0x000000008011c2f2
[    1.767506] [<000000008011c436>] 0x000000008011c436
[    1.772368] [<00000000801ed86e>] 0x00000000801ed86e
[    1.777230] [<00000000801634e2>] 0x00000000801634e2
[    1.782092] [<00000000801633c6>] 0x00000000801633c6
[    1.786954] [<000000008017451e>] 0x000000008017451e
[    1.791816] [<00000000801746da>] 0x00000000801746da
[    1.796678] [<0000000080161648>] 0x0000000080161648
[    1.801540] [<000000008016241e>] 0x000000008016241e
[    1.806402] [<0000000080192fc6>] 0x0000000080192fc6
[    1.811264] [<00000000801624a6>] 0x00000000801624a6
[    1.816127] [<000000008016262c>] 0x000000008016262c
[    1.820989] [<000000008016267e>] 0x000000008016267e
[    1.825851] [<0000000080178178>] 0x0000000080178178
[    1.830713] [<00000000801781c0>] 0x00000000801781c0
[    1.835575] [<0000000080178b5c>] 0x0000000080178b5c
[    1.840437] [<0000000080178c82>] 0x0000000080178c82
[    1.845299] [<0000000080001678>] 0x0000000080001678
[    1.850161] [<0000000080001724>] 0x0000000080001724
[    1.855023] [<000000008000145a>] 0x000000008000145a
[    1.859885] [<00000000800014b0>] 0x00000000800014b0
[    1.864748] [<000000008000e7cc>] 0x000000008000e7cc
[    1.869609] [<000000008000e80c>] 0x000000008000e80c
[    1.874472] [<0000000080001e44>] 0x0000000080001e44
[    1.879334] [<0000000080000a80>] 0x0000000080000a80
[    1.884196] [<0000000080000ce4>] 0x0000000080000ce4
[    1.889058] [<00000000801fd934>] 0x00000000801fd934
[    1.893920] [<000000008011b304>] 0x000000008011b304
[    1.899086] Mem-Info:
[    1.901072] active_anon:0 inactive_anon:0 isolated_anon:0
[    1.901072]  active_file:0 inactive_file:0 isolated_file:0
[    1.901072]  unevictable:705 dirty:0 writeback:0 unstable:0
[    1.901072]  slab_reclaimable:0 slab_unreclaimable:215
[    1.901072]  mapped:0 shmem:0 pagetables:0 bounce:0
[    1.901072]  free:417 free_pcp:0 free_cma:0
[    1.931708] Node 0 active_anon:0kB inactive_anon:0kB active_file:0kB i=
nactive_file:0kB unevictable:2820kB isolated(anon):0kB isolated(file):0kB=
 mapped:0kB dirty:0kB writeback:0kB shmem:0kB writeback_tmp:0kB unstable:=
0kB all_unreclaimable? no
[    1.953051] DMA32 free:1668kB min:4392kB low:4464kB high:4536kB reserv=
ed_highatomic:0KB active_anon:0kB inactive_anon:0kB active_file:0kB inact=
ive_file:0kB unevictable:2820kB writepending:0kB present:8192kB managed:5=
528kB mlocked:0kB kernel_stack:168kB pagetables:0kB bounce:0kB free_pcp:0=
kB local_pcp:0kB free_cma:0kB
[    1.981067] lowmem_reserve[]: 0 0 0
[    1.984492] DMA32: 1*4kB (U) 0*8kB 0*16kB 0*32kB 0*64kB 1*128kB (U) 0*=
256kB 1*512kB (U) 1*1024kB (U) 0*2048kB 0*4096kB =3D 1668kB
[    1.995970] 704 total pagecache pages
[    1.999599] 2048 pages RAM
[    2.002291] 0 pages HighMem/MovableOnly
[    2.006110] 666 pages reserved
[    2.009131] Tasks state (memory values in pages):
[    2.013848] [  pid  ]   uid  tgid total_vm      rss pgtables_bytes swa=
pents oom_score_adj name
[    2.022450] Out of memory and no killable processes...
[    2.027562] Kernel panic - not syncing: System is deadlocked on memory=

[    2.034062] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.6.0-rc1-00054-=
gd32122774dab #12
[    2.042036] Call Trace:
[    2.044472] [<000000008011c2f2>] 0x000000008011c2f2
[    2.049333] [<000000008011c436>] 0x000000008011c436
[    2.054195] [<00000000801ed86e>] 0x00000000801ed86e
[    2.059057] [<000000008011f4d8>] 0x000000008011f4d8
[    2.063919] [<00000000801633ea>] 0x00000000801633ea
[    2.068782] [<000000008017451e>] 0x000000008017451e
[    2.073644] [<00000000801746da>] 0x00000000801746da
[    2.078506] [<0000000080161648>] 0x0000000080161648
[    2.083368] [<000000008016241e>] 0x000000008016241e
[    2.088230] [<0000000080192fc6>] 0x0000000080192fc6
[    2.093092] [<00000000801624a6>] 0x00000000801624a6
[    2.097954] [<000000008016262c>] 0x000000008016262c
[    2.102816] [<000000008016267e>] 0x000000008016267e
[    2.107678] [<0000000080178178>] 0x0000000080178178
[    2.112541] [<00000000801781c0>] 0x00000000801781c0
[    2.117403] [<0000000080178b5c>] 0x0000000080178b5c
[    2.122265] [<0000000080178c82>] 0x0000000080178c82
[    2.127127] [<0000000080001678>] 0x0000000080001678
[    2.131989] [<0000000080001724>] 0x0000000080001724
[    2.136851] [<000000008000145a>] 0x000000008000145a
[    2.141713] [<00000000800014b0>] 0x00000000800014b0
[    2.146575] [<000000008000e7cc>] 0x000000008000e7cc
[    2.151437] [<000000008000e80c>] 0x000000008000e80c
[    2.156299] [<0000000080001e44>] 0x0000000080001e44
[    2.161162] [<0000000080000a80>] 0x0000000080000a80
[    2.166024] [<0000000080000ce4>] 0x0000000080000ce4
[    2.170886] [<00000000801fd934>] 0x00000000801fd934
[    2.175748] [<000000008011b304>] 0x000000008011b304
[    2.180624] ---[ end Kernel panic - not syncing: System is deadlocked =
on memory ]---




