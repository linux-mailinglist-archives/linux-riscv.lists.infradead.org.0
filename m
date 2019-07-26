Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 943FD7729A
	for <lists+linux-riscv@lfdr.de>; Fri, 26 Jul 2019 22:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3HIU7y0KVrjSsb5f3matJ5MjNtGR173TyQUzt5sGB4=; b=c8xzrrb3N8hpL3
	37jgGGePMDY+Yg0kaUIGYk1BqsktJu8iPqC08FuXMxJvktsZKQCFhdhFvrgaBKN5nUtR4bC3xXfmT
	xfcuHFzIC+4TYzC2YweLYKW+P7ztmfyFngJ2SkImojyRjkfmR1xQrOXjzFnRwDU6r6fu9BScyTcyv
	vqmmjeqrxv8wWJVASmJFt1pIOm4FIzJV2/eHddspxiw8ybTHLfUy0Xyj+1/UAxBmxRw8eNQJcII4f
	LpgMyFzM9NLdL3HJ+Xa/CB7Xgug9fKv8A2RF88LuMMKei4eG13PZgw+mGO+snOIHN1xwHJc7z9DIk
	FnCJNoQj0+s/KochwzWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr6cl-0003CC-3B; Fri, 26 Jul 2019 20:15:31 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr6ch-0003Bf-Iv
 for linux-riscv@lists.infradead.org; Fri, 26 Jul 2019 20:15:29 +0000
Received: by mail-io1-xd44.google.com with SMTP id g20so107302979ioc.12
 for <linux-riscv@lists.infradead.org>; Fri, 26 Jul 2019 13:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=9WyyFtGDa/oI2K0SoorWyGV62gLsK5AqqZUD+AVwi30=;
 b=Fb1/iCLjf/NTOtNNhbSpzOTh2HSJi8m3cogsN6IlhBqqXfIsc8b6/c5d54iSoV9tf2
 4IXGW09arBQ1PLR9BDnrrDFFZeThGRlGJb1zcCHOBX/uSTmXUxjsHC5Wtn6a5v+3nRf1
 oJ+3ikPkGPiZj3GBLWuU4dq/hVwWrnpaCbKsm+AtPr1gurUkCfgxi0HX4Wk1tLHikQWj
 wT6aPzheIXgs4SsO5mbwNoQsUAkKQE6saF99TaAMGMeKeDLlNQIkXR1NdUvfX7qT7FYa
 eTNtjQNzwfQ9/SFfxUX4M5xnr2uLMMhN3nt8caAvX1DdPVHS/1ToO3yYaSeHBD04DYMw
 oJSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=9WyyFtGDa/oI2K0SoorWyGV62gLsK5AqqZUD+AVwi30=;
 b=GfJB6hX+dKTrCkxLEllLSAJaClOMHHwBOcGLexLVOFeB9klQ73EWawOPNJb8eGGCx8
 ziPKObejvlVWSlAZ0+BwaGzxlT/kLXM0F1TFJQjYEb+7o0JyiBrazrR0gXWqyhxwyUHr
 zWWv1LGUqMC7cYmi2Brz83PSEiDrUUGNRkFFjskO5bF8ultBp34zth/4/kXASfEb8EK2
 hE4gRkqnkc5Ld2hBk4zh/2ptBXIyk19/oa5W/jQuwQkvrsgUNi+fkYwF+SORSzU0NNgE
 B8xvfiVtaz0CaVEhRqmsvn9LiFphDLao3PXAtFTeCyUFsSP/8SLIlIu3Qiu52KJ/wxRd
 GYLw==
X-Gm-Message-State: APjAAAVqHjmrhJprDFg0WGd8af4/O36z3DoGamuwPjL8oQLA6gyVOjYS
 rWd8hwlbZregk0WBerwBht/dtQ==
X-Google-Smtp-Source: APXvYqzsqQtosoZzCBtwEUSq2JCLj43JNgQACq9apPNl9xsQbwBsE8qGPx2yPCPSFW8euGk6L+kJ2A==
X-Received: by 2002:a02:5185:: with SMTP id s127mr28951962jaa.44.1564172126478; 
 Fri, 26 Jul 2019 13:15:26 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
 by smtp.gmail.com with ESMTPSA id a8sm40604193ioh.29.2019.07.26.13.15.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 13:15:25 -0700 (PDT)
Date: Fri, 26 Jul 2019 13:15:24 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH REBASE v4 14/14] riscv: Make mmap allocation top-down by
 default
In-Reply-To: <6b2b45a5-0ac4-db73-8f50-ab182a0cb621@ghiti.fr>
Message-ID: <alpine.DEB.2.21.9999.1907261310490.26670@viisi.sifive.com>
References: <20190724055850.6232-1-alex@ghiti.fr>
 <20190724055850.6232-15-alex@ghiti.fr>
 <alpine.DEB.2.21.9999.1907251655310.32766@viisi.sifive.com>
 <6b2b45a5-0ac4-db73-8f50-ab182a0cb621@ghiti.fr>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_131527_691025_8B6CACC9 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Cashman <dcashman@google.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 linux-riscv@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 26 Jul 2019, Alexandre Ghiti wrote:

> On 7/26/19 2:20 AM, Paul Walmsley wrote:
> > 
> > On Wed, 24 Jul 2019, Alexandre Ghiti wrote:
> > 
> > > In order to avoid wasting user address space by using bottom-up mmap
> > > allocation scheme, prefer top-down scheme when possible.
> > > 
> > > Before:
> > > root@qemuriscv64:~# cat /proc/self/maps
> > > 00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
> > > 00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
> > > 00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
> > > 00018000-00039000 rw-p 00000000 00:00 0          [heap]
> > > 1555556000-155556d000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> > > 155556d000-155556e000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> > > 155556e000-155556f000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> > > 155556f000-1555570000 rw-p 00000000 00:00 0
> > > 1555570000-1555572000 r-xp 00000000 00:00 0      [vdso]
> > > 1555574000-1555576000 rw-p 00000000 00:00 0
> > > 1555576000-1555674000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
> > > 1555674000-1555678000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
> > > 1555678000-155567a000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
> > > 155567a000-15556a0000 rw-p 00000000 00:00 0
> > > 3fffb90000-3fffbb1000 rw-p 00000000 00:00 0      [stack]
> > > 
> > > After:
> > > root@qemuriscv64:~# cat /proc/self/maps
> > > 00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
> > > 00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
> > > 00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
> > > 2de81000-2dea2000 rw-p 00000000 00:00 0          [heap]
> > > 3ff7eb6000-3ff7ed8000 rw-p 00000000 00:00 0
> > > 3ff7ed8000-3ff7fd6000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
> > > 3ff7fd6000-3ff7fda000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
> > > 3ff7fda000-3ff7fdc000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
> > > 3ff7fdc000-3ff7fe2000 rw-p 00000000 00:00 0
> > > 3ff7fe4000-3ff7fe6000 r-xp 00000000 00:00 0      [vdso]
> > > 3ff7fe6000-3ff7ffd000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> > > 3ff7ffd000-3ff7ffe000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> > > 3ff7ffe000-3ff7fff000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> > > 3ff7fff000-3ff8000000 rw-p 00000000 00:00 0
> > > 3fff888000-3fff8a9000 rw-p 00000000 00:00 0      [stack]
> > > 
> > > Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> > > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >   arch/riscv/Kconfig | 11 +++++++++++
> > >   1 file changed, 11 insertions(+)
> > > 
> > > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > > index 59a4727ecd6c..6a63973873fd 100644
> > > --- a/arch/riscv/Kconfig
> > > +++ b/arch/riscv/Kconfig
> > > @@ -54,6 +54,17 @@ config RISCV
> > >   	select EDAC_SUPPORT
> > >   	select ARCH_HAS_GIGANTIC_PAGE
> > >   	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> > > +	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> > > +	select HAVE_ARCH_MMAP_RND_BITS
> > > +
> > > +config ARCH_MMAP_RND_BITS_MIN
> > > +	default 18
> > Could you help me understand the rationale behind this constant?
> 
> 
> Indeed, I took that from arm64 code and I did not think enough about it: 
> that's great you spotted this because that's a way too large value for 
> 32 bits as it would, at minimum, make mmap random offset go up to 1GB 
> (18 + 12), which is a big hole for this small address space :)
> 
> arm and mips propose 8 as default value for 32bits systems which is 1MB offset
> at minimum.

8 seems like a fine minimum for Sv32.

> > > +
> > > +# max bits determined by the following formula:
> > > +#  VA_BITS - PAGE_SHIFT - 3
> > I realize that these lines are probably copied from arch/arm64/Kconfig.
> > But the rationale behind the "- 3" is not immediately obvious.  This
> > apparently originates from commit 8f0d3aa9de57 ("arm64: mm: support
> > ARCH_MMAP_RND_BITS"). Can you provide any additional context here?
> 
> 
> The formula comes from commit d07e22597d1d ("mm: mmap: add new /proc 
> tunable for mmap_base ASLR"), where the author states that "generally a 
> 3-4 bits less than the number of bits in the user-space accessible 
> virtual address space [allows to] give the greatest flexibility without 
> generating an invalid mmap_base address".
> 
> In practice, that limits the mmap random offset to at maximum 1/8 (for - 
> 3) of the total address space.

OK.

> > > +config ARCH_MMAP_RND_BITS_MAX
> > > +	default 33 if 64BIT # SV48 based
> > The rationale here is clear for Sv48, per the above formula:
> > 
> >     (48 - 12 - 3) = 33
> > 
> > > +	default 18
> > However, here it is less clear to me.  For Sv39, shouldn't this be
> > 
> >     (39 - 12 - 3) = 24
> > 
> > ?  And what about Sv32?
> 
> 
> You're right. Is there a way to distinguish between sv39 and sv48 here ?

This patch has just been posted:

https://lore.kernel.org/linux-riscv/alpine.DEB.2.21.9999.1907261259420.26670@viisi.sifive.com/T/#u

Assuming there are no negative comments, we'll plan to send it upstream 
during v5.3-rc.  Your patch should be able to set different minimums and 
maximums based on the value of CONFIG_RISCV_VM_SV*


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
