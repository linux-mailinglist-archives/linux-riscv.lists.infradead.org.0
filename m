Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 782151EEF4E
	for <lists+linux-riscv@lfdr.de>; Fri,  5 Jun 2020 04:09:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vf1+KHa5uVuveCfYB76JgHx3nwRL/i8E8jzR5pXq5CM=; b=otSi0TnqqVHQ8uW904orOBRDq
	2eO/8mfnJfrfw/Cw3ZoNVb504vVn9d0VtPvC/xRPUcjl9HBZ9M+wwVf/8LtVlmHucGbAzzlpMQ3iv
	XJyEPGXMI1U3Fl3hVkiCxtYxIQj0C27raiXuPaMG0em86O9d18qNd86X98FVYGIFTC0oN6TnvIvrC
	H6wUq9FGjMuUbphmIBtacyR+bkUur0mCMd3YzCWHQyBIv/nSuHM41xs8BbyqCyaA7qOzatLRh+QGZ
	AEQ/HC0+aiVJkQ1qDOKgODq69/gZHZflKTYVWqYafVoPWh5W1FFUsCxNoICBFMcpeaDFNQN4jHgAC
	1qk8rg9Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh1n1-0000Uc-RS; Fri, 05 Jun 2020 02:08:59 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh1mx-0000Sd-Q2
 for linux-riscv@lists.infradead.org; Fri, 05 Jun 2020 02:08:57 +0000
Received: by mail-qt1-x843.google.com with SMTP id y1so7248129qtv.12
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jun 2020 19:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vf1+KHa5uVuveCfYB76JgHx3nwRL/i8E8jzR5pXq5CM=;
 b=euNrCaxH1KD7AV8Ltzxg+pF2OicrHC9eosYbKlPS9yspzyxSLHdEDhK+gwP174CANT
 I726a5JHAECbl2yPLpfkoLZJks3n2YOWhSdOa3N/UZAoESjmvTFcyhPuiT502bf4cwfk
 kGgmZctsJzKwL+RfJOv0eGa2ZxtGNtBtpnsV7YyldrjTJV2dng6ZlVB+wAIn+aCsVL5+
 W1DRqtWE8gUFRMnjVRllJjW9SbjQXLWLLnW89vC2/NRnlVPlmqbnZ1kuXLnpHQEjg5w5
 7jUU4ot8icIRIRTXimqXnU7/smEBkAb4QQxctoSMlCq1pMCCtxqTgEANHMs9JVv7MrZU
 4r6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vf1+KHa5uVuveCfYB76JgHx3nwRL/i8E8jzR5pXq5CM=;
 b=ocTqCqyKgTviFKyHOmKsJr1cru+7Cz5JF9mB9fgum2y4sOmvG+TMlS5R7udkFDDds+
 g/WiGFaCvyFyIfFXgJLDt/0GM3KF5iWfH1iUgO0sfBKnZzFT/yZFhajYhnWsfbpqnDAr
 ZhXnNnp4vDccgqwebelzW+lTORlHb1FzRxfb8S+TeIuTjwtcJO6fOZKFJGMCw1LitZYG
 9LmoZpii+Cp3aGaZWtAJrLlsJ847DlDqHo9QAorXdUkj8YXn3UPz4HHBFg/K2hpXRtDL
 zVjuaJuZy7q/zwZPZcslE1/zAaFmpmheAKw96XEBzplCngPP2GKcfFVFjWd0nDxtUetv
 tH5w==
X-Gm-Message-State: AOAM531/HydQTM9XT38z0Wsr/5s56/NuG18VJjeFTDs0/RaH37BTge4G
 EokgbuZm+mvsF8tjqkNAQXvxyStH72h53zD0j2Z8iQ==
X-Google-Smtp-Source: ABdhPJxOJKnhu6jfZnkPiuUcCcpd1Ww4p4I+9IJ5b5szM6uLrmJpaYMzwcR+/qwxiGYdRlE8nD9F2V9RjT/WG6zQjP0=
X-Received: by 2002:ac8:7ca:: with SMTP id m10mr7590184qth.86.1591322932936;
 Thu, 04 Jun 2020 19:08:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAOnJCU+jkYSVa-vMjabdnRpubK0c52VgjjVreC=07L_Vr3C64g@mail.gmail.com>
 <mhng-6a5f967f-96fa-4476-ad99-50b2c3962a66@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-6a5f967f-96fa-4476-ad99-50b2c3962a66@palmerdabbelt-glaptop1>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Fri, 5 Jun 2020 10:08:42 +0800
Message-ID: <CABvJ_xiJ9iMiqCo-xtCvsOTQcsUwAXQmunbz1a+Qkf__5NJw_w@mail.gmail.com>
Subject: Re: [GIT PULL] RISC-V Patches for the 5.8 Merge Window, Part 1
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_190855_914340_999680F6 
X-CRM114-Status: GOOD (  24.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atishp@atishpatra.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 4:15 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Thu, 04 Jun 2020 12:50:13 PDT (-0700), atishp@atishpatra.org wrote:
> > On Thu, Jun 4, 2020 at 11:57 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
> >>
> >> The following changes since commit b9bbe6ed63b2b9f2c9ee5cbd0f2c946a2723f4ce:
> >>
> >>   Linux 5.7-rc6 (2020-05-17 16:48:37 -0700)
> >>
> >> are available in the Git repository at:
> >>
> >>   git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.8-mw0
> >>
> >> for you to fetch changes up to 09c0533d129ce460e6214c14f744ddbac3733889:
> >>
> >>   soc: sifive: l2 cache: Mark l2_get_priv_group as static (2020-05-28 15:57:49 -0700)
> >>
> >> ----------------------------------------------------------------
> >> RISC-V Patches for the 5.8 Merge Window, Part 1
> >>
> >> * The remainder of the code necessary to support the Kendryte K210.
> >>     * Support for building device trees into the kernel, as the K210 doesn't
> >>       have a bootloader that provides one.
> >>     * A K210 device tree and the associated defconfig update.
> >>     * Support for skipping PMP initialization on systems that trap on PMP
> >>       accesses rather than treating them as WARL.
> >> * Support for KGDB.
> >> * Improvements to text patching.
> >> * Some cleanups to the SiFive L2 cache driver.
> >>
> >> I may have a second part, but I wanted to get this out earlier rather than
> >> later as they've been ready to go for a while now.
> >>
> > Hi Palmer,
> > Can you also add the run time cpu hotplug fix patch if it is not too late?
> >
> > https://patchwork.kernel.org/patch/11581221/
> >
> > Without the patch, cpu hotplug will broken for 5.8-rc1 too.
>
> It looks like there's enough to warrant a part 2 (that fix, the vDSO stuff,
> some Kconfig stuff, and the interrupt stuff).  Some of that was held back to
> avoid conflicts, so it'd be easier for me if this just goes in as-is and I can
> start putting together another PR based on the post-merge commit.
>
> >> ----------------------------------------------------------------
> >> Damien Le Moal (1):
> >>       riscv: K210: Update defconfig
> >>
> >> Palmer Dabbelt (5):
> >>       riscv: Allow device trees to be built into the kernel
> >>       riscv: K210: Add a built-in device tree
> >>       RISC-V: Skip setting up PMPs on traps
> >>       soc: sifive: l2 cache: Eliminate an unsigned zero compare warning
> >>       soc: sifive: l2 cache: Mark l2_get_priv_group as static
> >>
> >> Vincent Chen (4):
> >>       kgdb: Add kgdb_has_hit_break function
> >>       riscv: Add KGDB support
> >>       riscv: Use the XML target descriptions to report 3 system registers
> >>       riscv: Add SW single-step support for KDB
> >>
Hi Palmer:
The "kgdb: enable arch to support XML packet support." patch seems to
be missing in this pull request. By the way, I recently sent the v5
KGDB patch set to fix some compile warning reported by Kbuild system
and select CONFIG ARCH_OPTIONAL_KERNEL_RWX in Kconfig to enable KGDB
to insert software breakpoints. If the v5 KGDB patch set is OK for
you, could you replace it with the v5 KGDB patch set?
Thank you.

> >> Yash Shah (2):
> >>       riscv: cacheinfo: Implement cache_get_priv_group with a generic ops structure
> >>       riscv: Add support to determine no. of L2 cache way enabled
> >>
> >> Zong Li (3):
> >>       riscv: Remove the 'riscv_' prefix of function name
> >>       riscv: Use NOKPROBE_SYMBOL() instead of __krpobes annotation
> >>       riscv: Use text_mutex instead of patch_lock
> >>
> >>  arch/riscv/Kbuild                       |   1 +
> >>  arch/riscv/Kconfig                      |   7 +
> >>  arch/riscv/Kconfig.socs                 |  17 +-
> >>  arch/riscv/boot/dts/Makefile            |   2 +
> >>  arch/riscv/boot/dts/kendryte/Makefile   |   4 +-
> >>  arch/riscv/configs/nommu_k210_defconfig |   7 +-
> >>  arch/riscv/include/asm/cacheinfo.h      |  15 ++
> >>  arch/riscv/include/asm/gdb_xml.h        | 117 ++++++++++
> >>  arch/riscv/include/asm/kdebug.h         |  12 +
> >>  arch/riscv/include/asm/kgdb.h           | 112 +++++++++
> >>  arch/riscv/include/asm/parse_asm.h      | 219 ++++++++++++++++++
> >>  arch/riscv/include/asm/patch.h          |   4 +-
> >>  arch/riscv/include/asm/soc.h            |  39 ++++
> >>  arch/riscv/kernel/Makefile              |   1 +
> >>  arch/riscv/kernel/cacheinfo.c           |  17 ++
> >>  arch/riscv/kernel/ftrace.c              |  15 +-
> >>  arch/riscv/kernel/head.S                |  11 +-
> >>  arch/riscv/kernel/kgdb.c                | 390 ++++++++++++++++++++++++++++++++
> >>  arch/riscv/kernel/patch.c               |  46 ++--
> >>  arch/riscv/kernel/setup.c               |   4 +
> >>  arch/riscv/kernel/soc.c                 |  27 +++
> >>  arch/riscv/kernel/traps.c               |   5 +
> >>  arch/riscv/kernel/vmlinux.lds.S         |   5 +
> >>  arch/riscv/mm/init.c                    |   9 +
> >>  drivers/soc/kendryte/k210-sysctl.c      |  12 +
> >>  drivers/soc/sifive/sifive_l2_cache.c    |  40 +++-
> >>  kernel/debug/debug_core.c               |  12 +
> >>  27 files changed, 1119 insertions(+), 31 deletions(-)
> >>  create mode 100644 arch/riscv/include/asm/cacheinfo.h
> >>  create mode 100644 arch/riscv/include/asm/gdb_xml.h
> >>  create mode 100644 arch/riscv/include/asm/kdebug.h
> >>  create mode 100644 arch/riscv/include/asm/kgdb.h
> >>  create mode 100644 arch/riscv/include/asm/parse_asm.h
> >>  create mode 100644 arch/riscv/kernel/kgdb.c
> >>
>

