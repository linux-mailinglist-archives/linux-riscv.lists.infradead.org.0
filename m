Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B395C1EEB54
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jun 2020 21:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QO/6BjeguK8mrA6fllmvZIM7gHNPpG49boXFPpogN34=; b=TLkrTuBGfyUPpA3zEk9N7JBaJ
	Hew6V6eXkPZz3apBoMgLXWaHA4Lk0NyZlnH8iN39AaIc8aDeS47hiwzK0B53wb3MeIpI9WXcURDa+
	hGhU/NYd0P5INZeAtACl5XeA8PGhfPoW/j/Vv3G1gKCTCI5kW524fEPPndWcHWPErWpgL3Enrdk7g
	vyZkJ+LMjnG5DVOGlf1JY8ernmkrk/OsCMvHRyMjTgC+7vzQDzofqLKAm/qqqhaxnWZ3otr2DSnwm
	8CGWva9CpcRxJm1z+pndXWiT+UsqbOQQXWkdhmD2tbK/w74MjWS5OI9wm/06Ay+XDuutMP7GbvSbf
	QrTFYjJ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgvsm-0006Zk-RS; Thu, 04 Jun 2020 19:50:32 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgvsi-0006YF-QN
 for linux-riscv@lists.infradead.org; Thu, 04 Jun 2020 19:50:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id q25so6912330wmj.0
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jun 2020 12:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QO/6BjeguK8mrA6fllmvZIM7gHNPpG49boXFPpogN34=;
 b=tkKxIKiewto63M0SG2qFNXDBFpvfEqEPLNbJ8Zt60F1dAEevH9OJNLF1P+0KgFtdBj
 k/0pW7c4qBMDe0CTv3ro6o1KmeNreTlxtNAxMxqX6rkBmUBljzvyCfdCTqqGeuzK8nA1
 TQrjc1CY2Pu1fAMcz7J5P2RwrycTNb3tBlCzs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QO/6BjeguK8mrA6fllmvZIM7gHNPpG49boXFPpogN34=;
 b=fKrQX3tFm/mh0GHl0VRjFXTnT2Gw1EuOjOuyoTW3EEe5RRqSvUaBS1aoA+RseNu6Eo
 UUUZEFPWn77VDhx6s6ArnovzSyaFPQ2aKbKqXsu7xipJA19E7Q65WiZoOBxg5Rqiw+Ld
 n5YaROiC/BKkTyaMQ87QfsdhTGbyY/KG8W0gazUaIViFNlgvoFp6okuW3QuGa1rp4j4t
 ATpSiYOVHjQtEk7mdasQqFaBCFn5HPm1Y8yPg5TzzR6EH2WrLodnRerspe9UFD8PRXNY
 OXzcbuU5xjHKebEfTab/Sgd3ETMbxmF0LYaVeYW/ot4yN0SM+10cCNUvCLCs7pa91cHx
 ABFA==
X-Gm-Message-State: AOAM531qI+zMI3U/ctseuFaWVv9m9FVIwBy33oLud74Wh65ziC/kQww+
 cRJh549m+Bx0XQi7e5vTDT7/fUxh0k6mjKux5Z/+
X-Google-Smtp-Source: ABdhPJwHOjBmi4ly0fIxjA1zlig8yDFzdQsiZsMihqgNdo7kxsnP4tWA9/snPEG0UtfOn6ZL/LcnnZeFKhO8gjGg9Fk=
X-Received: by 2002:a7b:c622:: with SMTP id p2mr5478154wmk.55.1591300224725;
 Thu, 04 Jun 2020 12:50:24 -0700 (PDT)
MIME-Version: 1.0
References: <mhng-8ec4417a-1930-4582-b309-e510ebbfb37c@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-8ec4417a-1930-4582-b309-e510ebbfb37c@palmerdabbelt-glaptop1>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 4 Jun 2020 12:50:13 -0700
Message-ID: <CAOnJCU+jkYSVa-vMjabdnRpubK0c52VgjjVreC=07L_Vr3C64g@mail.gmail.com>
Subject: Re: [GIT PULL] RISC-V Patches for the 5.8 Merge Window, Part 1
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_125028_924439_DE4C0F99 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 4, 2020 at 11:57 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> The following changes since commit b9bbe6ed63b2b9f2c9ee5cbd0f2c946a2723f4ce:
>
>   Linux 5.7-rc6 (2020-05-17 16:48:37 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.8-mw0
>
> for you to fetch changes up to 09c0533d129ce460e6214c14f744ddbac3733889:
>
>   soc: sifive: l2 cache: Mark l2_get_priv_group as static (2020-05-28 15:57:49 -0700)
>
> ----------------------------------------------------------------
> RISC-V Patches for the 5.8 Merge Window, Part 1
>
> * The remainder of the code necessary to support the Kendryte K210.
>     * Support for building device trees into the kernel, as the K210 doesn't
>       have a bootloader that provides one.
>     * A K210 device tree and the associated defconfig update.
>     * Support for skipping PMP initialization on systems that trap on PMP
>       accesses rather than treating them as WARL.
> * Support for KGDB.
> * Improvements to text patching.
> * Some cleanups to the SiFive L2 cache driver.
>
> I may have a second part, but I wanted to get this out earlier rather than
> later as they've been ready to go for a while now.
>
Hi Palmer,
Can you also add the run time cpu hotplug fix patch if it is not too late?

https://patchwork.kernel.org/patch/11581221/

Without the patch, cpu hotplug will broken for 5.8-rc1 too.

> ----------------------------------------------------------------
> Damien Le Moal (1):
>       riscv: K210: Update defconfig
>
> Palmer Dabbelt (5):
>       riscv: Allow device trees to be built into the kernel
>       riscv: K210: Add a built-in device tree
>       RISC-V: Skip setting up PMPs on traps
>       soc: sifive: l2 cache: Eliminate an unsigned zero compare warning
>       soc: sifive: l2 cache: Mark l2_get_priv_group as static
>
> Vincent Chen (4):
>       kgdb: Add kgdb_has_hit_break function
>       riscv: Add KGDB support
>       riscv: Use the XML target descriptions to report 3 system registers
>       riscv: Add SW single-step support for KDB
>
> Yash Shah (2):
>       riscv: cacheinfo: Implement cache_get_priv_group with a generic ops structure
>       riscv: Add support to determine no. of L2 cache way enabled
>
> Zong Li (3):
>       riscv: Remove the 'riscv_' prefix of function name
>       riscv: Use NOKPROBE_SYMBOL() instead of __krpobes annotation
>       riscv: Use text_mutex instead of patch_lock
>
>  arch/riscv/Kbuild                       |   1 +
>  arch/riscv/Kconfig                      |   7 +
>  arch/riscv/Kconfig.socs                 |  17 +-
>  arch/riscv/boot/dts/Makefile            |   2 +
>  arch/riscv/boot/dts/kendryte/Makefile   |   4 +-
>  arch/riscv/configs/nommu_k210_defconfig |   7 +-
>  arch/riscv/include/asm/cacheinfo.h      |  15 ++
>  arch/riscv/include/asm/gdb_xml.h        | 117 ++++++++++
>  arch/riscv/include/asm/kdebug.h         |  12 +
>  arch/riscv/include/asm/kgdb.h           | 112 +++++++++
>  arch/riscv/include/asm/parse_asm.h      | 219 ++++++++++++++++++
>  arch/riscv/include/asm/patch.h          |   4 +-
>  arch/riscv/include/asm/soc.h            |  39 ++++
>  arch/riscv/kernel/Makefile              |   1 +
>  arch/riscv/kernel/cacheinfo.c           |  17 ++
>  arch/riscv/kernel/ftrace.c              |  15 +-
>  arch/riscv/kernel/head.S                |  11 +-
>  arch/riscv/kernel/kgdb.c                | 390 ++++++++++++++++++++++++++++++++
>  arch/riscv/kernel/patch.c               |  46 ++--
>  arch/riscv/kernel/setup.c               |   4 +
>  arch/riscv/kernel/soc.c                 |  27 +++
>  arch/riscv/kernel/traps.c               |   5 +
>  arch/riscv/kernel/vmlinux.lds.S         |   5 +
>  arch/riscv/mm/init.c                    |   9 +
>  drivers/soc/kendryte/k210-sysctl.c      |  12 +
>  drivers/soc/sifive/sifive_l2_cache.c    |  40 +++-
>  kernel/debug/debug_core.c               |  12 +
>  27 files changed, 1119 insertions(+), 31 deletions(-)
>  create mode 100644 arch/riscv/include/asm/cacheinfo.h
>  create mode 100644 arch/riscv/include/asm/gdb_xml.h
>  create mode 100644 arch/riscv/include/asm/kdebug.h
>  create mode 100644 arch/riscv/include/asm/kgdb.h
>  create mode 100644 arch/riscv/include/asm/parse_asm.h
>  create mode 100644 arch/riscv/kernel/kgdb.c
>


-- 
Regards,
Atish

