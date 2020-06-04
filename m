Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE0A1EEBA5
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jun 2020 22:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=WOZaG2u1de4YEHm+yW1ep+MxAdFc9U0Z2nxdOZXGt88=; b=pG+rwNITukGVcV
	QVRdcnGAtMChSid66z2GKpAAz+SriRkWpMp3BIR6oUahgdehJmJyCu0uejRsOO4GZ2ZKRVv3+B6Sw
	Wz5aQGnrOgj5uFqNWUI83SvOEGNeNvNhoNgAY6JxwEhfdVEhoA0aOBht9MKmzAyZm+2sab1HRQMyK
	8F1eRWsekLLyLoFVeR866w8tO63IODojZNmIWctpPnNB0bL+hJMGlZaUFNobBdTXElNdilErcP2Gt
	L/os8RQeVpdirbcbqq3Y6OESeEyR0lGfOvlXU3Az4nnpvV/jNXeIcQHgItqougYlj20Fa2nKxhyOX
	OqbOjPsQfP8zc1cscYHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwH9-0004Oj-Jl; Thu, 04 Jun 2020 20:15:43 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwH5-0004Nz-Up
 for linux-riscv@lists.infradead.org; Thu, 04 Jun 2020 20:15:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id m7so2665568plt.5
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jun 2020 13:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=WOZaG2u1de4YEHm+yW1ep+MxAdFc9U0Z2nxdOZXGt88=;
 b=ALBLU+FeqwQoATYy+P/2ToiUYbwkFRW+/Jy0BP6bHUmjobSR95mEC1dD80v2PySV6/
 rAHOT3Sc4hDcUpLaxma36F1oewKiEY0bunsCrUgT1goIgubbUo2cAnpjfGjtEcQYsybi
 /fJxPsulhJl4SvKjzIdj1Jz++udL1OK9aGiKtRhazzzA1TuA8nn97hwp7Z0a7ArYnzTA
 7dRO9sjR7xahcXuCAxTZfSC3jfh31a+yxDko46tX1z84J+T2E+Q9b7yyr7g0tb9feNvQ
 Aqa+yksWE+KbALJVua5NSJe5V/iVQVs4iOI4P41lOVNmwurDxDpAoDugusv2XFczMl7Z
 raIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=WOZaG2u1de4YEHm+yW1ep+MxAdFc9U0Z2nxdOZXGt88=;
 b=iFgr1Y2zOhv5vsTgms0Zdla40OedQ0JZeY3mirqK8s/Iq8NEMijnZP3SJi/2w836Ra
 X1Qes17a5wCHgzf61BovcA+H0BY9vdGgnJ4COI8cMW8nRyR20HIUSB2/iKYATZsCFrjP
 qErFlkIj9spxQGclkWHiZMkJILbY2/oniVSazYpESj+3x5Gged58JB2XevBwHbFUgXkR
 1AVue+gTjjjFZcYalxE7/cMC+7nfa9DZNU/pxtdk2haYsPu8/jEbC8wcC7E8eql/eSsX
 bLaBZ7NXtYwoOrUivPNPvJNdnitVmxnMAwDeRwvRT9kD3lthWOT3K2AG+yYLhWDZ5XIx
 TyFQ==
X-Gm-Message-State: AOAM530r6eKKzCzauVf5ZxkqrXvlBgPn4y9u3aUjB9oD6X6QNY/cSEZt
 jJ0ew4+BHPd6NlIwaV1hTf4tjw==
X-Google-Smtp-Source: ABdhPJy7+MQO7TyqSkHCQ0356mGWsvAdakxuGJB4/Vexl1NwjXd8bhEaCq1cP4gxQg0Pq6iqMXirRg==
X-Received: by 2002:a17:90a:c905:: with SMTP id
 v5mr7905454pjt.39.1591301735348; 
 Thu, 04 Jun 2020 13:15:35 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id y23sm4601875pgc.78.2020.06.04.13.15.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 13:15:34 -0700 (PDT)
Date: Thu, 04 Jun 2020 13:15:34 -0700 (PDT)
X-Google-Original-Date: Thu, 04 Jun 2020 13:15:31 PDT (-0700)
Subject: Re: [GIT PULL] RISC-V Patches for the 5.8 Merge Window, Part 1
In-Reply-To: <CAOnJCU+jkYSVa-vMjabdnRpubK0c52VgjjVreC=07L_Vr3C64g@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: atishp@atishpatra.org
Message-ID: <mhng-6a5f967f-96fa-4476-ad99-50b2c3962a66@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_131540_060300_732510A5 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 04 Jun 2020 12:50:13 PDT (-0700), atishp@atishpatra.org wrote:
> On Thu, Jun 4, 2020 at 11:57 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>>
>> The following changes since commit b9bbe6ed63b2b9f2c9ee5cbd0f2c946a2723f4ce:
>>
>>   Linux 5.7-rc6 (2020-05-17 16:48:37 -0700)
>>
>> are available in the Git repository at:
>>
>>   git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.8-mw0
>>
>> for you to fetch changes up to 09c0533d129ce460e6214c14f744ddbac3733889:
>>
>>   soc: sifive: l2 cache: Mark l2_get_priv_group as static (2020-05-28 15:57:49 -0700)
>>
>> ----------------------------------------------------------------
>> RISC-V Patches for the 5.8 Merge Window, Part 1
>>
>> * The remainder of the code necessary to support the Kendryte K210.
>>     * Support for building device trees into the kernel, as the K210 doesn't
>>       have a bootloader that provides one.
>>     * A K210 device tree and the associated defconfig update.
>>     * Support for skipping PMP initialization on systems that trap on PMP
>>       accesses rather than treating them as WARL.
>> * Support for KGDB.
>> * Improvements to text patching.
>> * Some cleanups to the SiFive L2 cache driver.
>>
>> I may have a second part, but I wanted to get this out earlier rather than
>> later as they've been ready to go for a while now.
>>
> Hi Palmer,
> Can you also add the run time cpu hotplug fix patch if it is not too late?
>
> https://patchwork.kernel.org/patch/11581221/
>
> Without the patch, cpu hotplug will broken for 5.8-rc1 too.

It looks like there's enough to warrant a part 2 (that fix, the vDSO stuff,
some Kconfig stuff, and the interrupt stuff).  Some of that was held back to
avoid conflicts, so it'd be easier for me if this just goes in as-is and I can
start putting together another PR based on the post-merge commit.

>> ----------------------------------------------------------------
>> Damien Le Moal (1):
>>       riscv: K210: Update defconfig
>>
>> Palmer Dabbelt (5):
>>       riscv: Allow device trees to be built into the kernel
>>       riscv: K210: Add a built-in device tree
>>       RISC-V: Skip setting up PMPs on traps
>>       soc: sifive: l2 cache: Eliminate an unsigned zero compare warning
>>       soc: sifive: l2 cache: Mark l2_get_priv_group as static
>>
>> Vincent Chen (4):
>>       kgdb: Add kgdb_has_hit_break function
>>       riscv: Add KGDB support
>>       riscv: Use the XML target descriptions to report 3 system registers
>>       riscv: Add SW single-step support for KDB
>>
>> Yash Shah (2):
>>       riscv: cacheinfo: Implement cache_get_priv_group with a generic ops structure
>>       riscv: Add support to determine no. of L2 cache way enabled
>>
>> Zong Li (3):
>>       riscv: Remove the 'riscv_' prefix of function name
>>       riscv: Use NOKPROBE_SYMBOL() instead of __krpobes annotation
>>       riscv: Use text_mutex instead of patch_lock
>>
>>  arch/riscv/Kbuild                       |   1 +
>>  arch/riscv/Kconfig                      |   7 +
>>  arch/riscv/Kconfig.socs                 |  17 +-
>>  arch/riscv/boot/dts/Makefile            |   2 +
>>  arch/riscv/boot/dts/kendryte/Makefile   |   4 +-
>>  arch/riscv/configs/nommu_k210_defconfig |   7 +-
>>  arch/riscv/include/asm/cacheinfo.h      |  15 ++
>>  arch/riscv/include/asm/gdb_xml.h        | 117 ++++++++++
>>  arch/riscv/include/asm/kdebug.h         |  12 +
>>  arch/riscv/include/asm/kgdb.h           | 112 +++++++++
>>  arch/riscv/include/asm/parse_asm.h      | 219 ++++++++++++++++++
>>  arch/riscv/include/asm/patch.h          |   4 +-
>>  arch/riscv/include/asm/soc.h            |  39 ++++
>>  arch/riscv/kernel/Makefile              |   1 +
>>  arch/riscv/kernel/cacheinfo.c           |  17 ++
>>  arch/riscv/kernel/ftrace.c              |  15 +-
>>  arch/riscv/kernel/head.S                |  11 +-
>>  arch/riscv/kernel/kgdb.c                | 390 ++++++++++++++++++++++++++++++++
>>  arch/riscv/kernel/patch.c               |  46 ++--
>>  arch/riscv/kernel/setup.c               |   4 +
>>  arch/riscv/kernel/soc.c                 |  27 +++
>>  arch/riscv/kernel/traps.c               |   5 +
>>  arch/riscv/kernel/vmlinux.lds.S         |   5 +
>>  arch/riscv/mm/init.c                    |   9 +
>>  drivers/soc/kendryte/k210-sysctl.c      |  12 +
>>  drivers/soc/sifive/sifive_l2_cache.c    |  40 +++-
>>  kernel/debug/debug_core.c               |  12 +
>>  27 files changed, 1119 insertions(+), 31 deletions(-)
>>  create mode 100644 arch/riscv/include/asm/cacheinfo.h
>>  create mode 100644 arch/riscv/include/asm/gdb_xml.h
>>  create mode 100644 arch/riscv/include/asm/kdebug.h
>>  create mode 100644 arch/riscv/include/asm/kgdb.h
>>  create mode 100644 arch/riscv/include/asm/parse_asm.h
>>  create mode 100644 arch/riscv/kernel/kgdb.c
>>

