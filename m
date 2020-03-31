Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3F3199E1D
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 20:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=gpozJM30UMUeBqF42G+Q1xZ6EH+m2FBOCfWDSz6ubV4=; b=QPbLZT2XRy25k4
	ecwqhzY7TlPimSCw71pztRDQyFiqegQx8FCTQzN0Clorle8q1b9pecZxc/fVQL/wS3r886B4AE5nC
	bWZqjezYQneQ4i1g2CmfXzIpftKcjVhjiWysTwe6S6r9D5PTq8A4PCXMEIgg2K3EwwHgSNuXzCE6g
	B/9clpkszNHUvk1snEgsL/cAFJVv5OTZ+4yzJIYxFHjtKUwCupJcMrMxmKS2cO/AkIOtJdglkQp/H
	TrpqemTDCHvshKv9vBYkWZ9UNjQv8c4iZ/9hdWhpPIboZA3wHlaZUl7UCPs9dI/GolKfGZc9xWDRL
	IO0nmYcLVpmyhj0dx90g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJLjs-0006lz-GP; Tue, 31 Mar 2020 18:35:52 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLjo-0006lb-Hr
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 18:35:50 +0000
Received: by mail-pl1-x641.google.com with SMTP id k18so3639507pll.6
 for <linux-riscv@lists.infradead.org>; Tue, 31 Mar 2020 11:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=gpozJM30UMUeBqF42G+Q1xZ6EH+m2FBOCfWDSz6ubV4=;
 b=gcEdN6MO2lrllAbjavG13EpK8TvOW6tpaKB24cx7orULwToRmZSMqxjy396tUOGQ+h
 10LrpuwyCCYZEOs8QUkS7TQ0K/AgvOkY96cwBPhTFLnw4pCoti5cU/riIGnePE5V19Uw
 sFE2z7IkmuCFqWG7vFUxB8o1I+VLgBDB0v2aCl9eo0hVSmFXJGapdRqlE161s10+SovV
 ry6iDXy1IvZSHlz+esIkAbIJuWGCpaEAerT0ocQ6td+o5fLP0jtKuvO6G7jiA3t15eHw
 8TRO0rWuzc3v3+dbrn/HWpVDl50/e7LPooiMRGQMNZDumOhrKWf7/3E9vEgK/C7ZlEf8
 AiQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=gpozJM30UMUeBqF42G+Q1xZ6EH+m2FBOCfWDSz6ubV4=;
 b=n3Hcd00h2JqlLDgPXvNKEBlGGOoAcErplQLwwTe+692w86HYI650KOCGznNKjheC6V
 I5KJWIcTT6c3iht9S6zEVfmlKOylT0qI6q2x33ytBC0UVje2Oa8sbefoz62JtnrzNl+D
 4vuW0onQVAIG9GM2oD4NQ1JYJpeW50M8KqWNJUrZLKrywqsYD45gOWNVN5+rLRnNsPSl
 sPIYuiEzFWtSxYCuOzJo+SI6zqXJNhbNEfh2xk6XcoHfvAmKIwd5sA9qEcWKV7kmhUsW
 dJgtiNWEWl1zaD2zUCl6SRBML68E5M7a2QIAUy4fq7JKajxVN9qLVtCMevSh4yuyIL5t
 AumA==
X-Gm-Message-State: AGi0PuZVWVbKErWAIPBCKkazuY8MAoUARt1ndr1zbTuQ/ASmHYFJPHVl
 eR3h9PH9BZkaqWLHcea9dRlFng==
X-Google-Smtp-Source: APiQypIoJKj9iSSWlAXJsCa4ODsoSGuSWZLzYZP/8m+Ca7gtEKTwNwqB5O9lzdvIuClsylswo/3BrQ==
X-Received: by 2002:a17:902:9f95:: with SMTP id
 g21mr5310159plq.66.1585679747715; 
 Tue, 31 Mar 2020 11:35:47 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id i2sm12765883pfr.203.2020.03.31.11.35.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 11:35:47 -0700 (PDT)
Date: Tue, 31 Mar 2020 11:35:47 -0700 (PDT)
X-Google-Original-Date: Tue, 31 Mar 2020 11:34:57 PDT (-0700)
Subject: Re: [PATCH v11 00/11] Add support for SBI v0.2 and CPU hotplug
In-Reply-To: <20200318011144.91532-1-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-c3553b26-6593-4b77-9531-b8be7668adee@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_113548_592057_035E5607 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: aou@eecs.berkeley.edu, zong.li@sifive.com, nickhu@andestech.com,
 vincent.chen@sifive.com, anup@brainfault.org, linux-kernel@vger.kernel.org,
 rppt@linux.ibm.com, Atish Patra <Atish.Patra@wdc.com>, gary@garyguo.net,
 Paul Walmsley <paul.walmsley@sifive.com>, greentime.hu@sifive.com,
 linux-riscv@lists.infradead.org, bmeng.cn@gmail.com, tglx@linutronix.de,
 han_mao@c-sky.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 17 Mar 2020 18:11:33 PDT (-0700), Atish Patra wrote:
> The Supervisor Binary Interface(SBI) specification[1] now defines a
> base extension that provides extendability to add future extensions
> while maintaining backward compatibility with previous versions.
> The new version is defined as 0.2 and older version is marked as 0.1.

While 0.2 isn't official, I don't think we got any comments on 0.2-rc1 so let's
just go ahead and release it.  I'm hoping to send my PR at the end of the week,
I'll be sure to tag 0.2 before then -- things are still a bit of a mess here
due to the internet issues, but I've got a bunch of networking gear coming this
week so hopefully it'll get better...

Thanks for this!

>
> This series adds following features to RISC-V Linux.
> 1. Adds support for SBI v0.2
> 2. A Unified calling convention implementation between 0.1 and 0.2.
> 3. SBI Hart state management extension (HSM)
> 4. Ordered booting of harts
> 4. CPU hotplug
>
> Dependencies:
> The support for SBI v0.2 and HSM extension is already available in OpenSBI
> master.
>
> [1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
>
> The patches are also available in following github repositery.
>
> Linux Kernel: https://github.com/atishp04/linux/tree/sbi_v0.2_v11
>
> Patches 1-5 implements the SBI v0.2 and unified calling convention.
> Patches 6-7 adds a cpu_ops method that allows different booting protocols
> dynamically.
> Patches 9-10 adds HSM extension and ordered hart booting support.
> Patche  11 adds cpu hotplug support.
>
> Changes v10->v11:
> 1. Addressed few nitpick comments.
> 2. Dropped plic patch as it is taken through IRQ tree.
>
> Changes from v9->10:
> 1. Minor copyright fixes.
> 2. Renaming of HSM extension definitions to match the spec.
>
> Changes from v8->v9:
> 1. Added a sliding window hart base method to support larger hart masks.
> 2. Added a callback to disable interrupts when cpu go offline.
> 3. Made the HSM extension series more modular.
>
> Changes from v7-v8:
> 1. Refactored to code to have modular cpu_ops calls.
> 2. Refactored HSM extension from sbi.c to cpu_ops_sbi.c.
> 3. Fix plic driver to handle cpu hotplug.
>
> Changes from v6-v7:
> 1. Rebased on v5.5
> 2. Fixed few compilation issues for !CONFIG_SMP and !CONFIG_RISCV_SBI
> 3. Added SBI HSM extension
> 4. Add CPU hotplug support
>
> Changes from v5->v6
> 1. Fixed few compilation issues around config.
> 2. Fixed hart mask generation issues for RFENCE & IPI extensions.
>
> Changes from v4->v5
> 1. Fixed few minor comments related to static & inline.
> 2. Make sure that every patch is boot tested individually.
>
> Changes from v3->v4.
> 1. Rebased on for-next.
> 2. Fixed issuses with checkpatch --strict.
> 3. Unfied all IPI/fence related functions.
> 4. Added Hfence related SBI calls.
>
> Changes from v2->v3.
> 1. Moved v0.1 extensions to a new config.
> 2. Added support for relacement extensions of v0.1 extensions.
>
> Changes from v1->v2
> 1. Removed the legacy calling convention.
> 2. Moved all SBI related calls to sbi.c.
> 3. Moved all SBI related macros to uapi.
>
> Atish Patra (11):
> RISC-V: Mark existing SBI as 0.1 SBI.
> RISC-V: Add basic support for SBI v0.2
> RISC-V: Add SBI v0.2 extension definitions
> RISC-V: Introduce a new config for SBI v0.1
> RISC-V: Implement new SBI v0.2 extensions
> RISC-V: Move relocate and few other functions out of __init
> RISC-V: Add cpu_ops and modify default booting method
> RISC-V: Export SBI error to linux error mapping function
> RISC-V: Add SBI HSM extension definitions
> RISC-V: Add supported for ordered booting method using HSM
> RISC-V: Support cpu hotplug
>
> arch/riscv/Kconfig                   |  19 +-
> arch/riscv/include/asm/cpu_ops.h     |  46 +++
> arch/riscv/include/asm/sbi.h         | 195 +++++----
> arch/riscv/include/asm/smp.h         |  24 ++
> arch/riscv/kernel/Makefile           |   6 +
> arch/riscv/kernel/cpu-hotplug.c      |  87 ++++
> arch/riscv/kernel/cpu_ops.c          |  46 +++
> arch/riscv/kernel/cpu_ops_sbi.c      | 115 ++++++
> arch/riscv/kernel/cpu_ops_spinwait.c |  43 ++
> arch/riscv/kernel/head.S             | 179 +++++----
> arch/riscv/kernel/sbi.c              | 575 ++++++++++++++++++++++++++-
> arch/riscv/kernel/setup.c            |  24 +-
> arch/riscv/kernel/smpboot.c          |  53 ++-
> arch/riscv/kernel/traps.c            |   2 +-
> arch/riscv/kernel/vmlinux.lds.S      |   5 +-
> 15 files changed, 1249 insertions(+), 170 deletions(-)
> create mode 100644 arch/riscv/include/asm/cpu_ops.h
> create mode 100644 arch/riscv/kernel/cpu-hotplug.c
> create mode 100644 arch/riscv/kernel/cpu_ops.c
> create mode 100644 arch/riscv/kernel/cpu_ops_sbi.c
> create mode 100644 arch/riscv/kernel/cpu_ops_spinwait.c

