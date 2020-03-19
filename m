Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BCE18BD64
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 18:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IrQFvalQjAj1dvXxeMLmGupr0Xalp7s3s+2Q95bH9WM=; b=opnRY15rZ5nPLWXG0Dqi6Cxt5
	rmxwGhQGxh2QC265XJWuJ4eMNTI3QQ+yPsBP9jJaiNOUF91Hnp8dSVr5FS5bVIYIaB1rPyHntFI0H
	qt9+zvG5c1mn6GZkolBuuNN+saSx049ASvXPqEHh+K7hnsuMQor7O8qlg16ffApVlEWU1pk9o2wiZ
	HVThWt4GND/ZBv8AURwUQMz2IDQo88yXJ/JlOHnUhc1oSCzQha5M+P8d9ptxeWMli2TXFqBaVN/qx
	lCdHZMPVT5ntJgq2PHbtUzT2nMsrFGull97I+YLJqaA+R+Rl5yVEyj4+VlzytRj8qyjpioonPA6Ae
	hI+m+48/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyZa-0007VU-To; Thu, 19 Mar 2020 17:03:10 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyZX-0007Py-OL
 for linux-riscv@lists.infradead.org; Thu, 19 Mar 2020 17:03:09 +0000
Received: by mail-qk1-x743.google.com with SMTP id f3so3886476qkh.1
 for <linux-riscv@lists.infradead.org>; Thu, 19 Mar 2020 10:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IrQFvalQjAj1dvXxeMLmGupr0Xalp7s3s+2Q95bH9WM=;
 b=DRucE40ktJNHOXVnzS8dYieFH2LdVzTSppid0JGzXT7wXLEbZSPvOYZGQT00P70m0J
 iYoixPYfv+A1RwTgO9EaffDMotHex4v0nJNJuCZViqbg7IIQZXU4/VurLrFLb0/JN7+i
 n1MgJP/wnZ7WQ5nFirFEWus7eojFUrvN5eE1U9KkecAukIjO9TMvHSxV1SJbMRJrjP1P
 RVa7C/VPyq59F+2cSd4bzGg8uGl6BRVYAE67Jb9dNyvDN16nlsE4AluXR7M8BDKL+clu
 21QBp/qH/TmokFsxhP4gsGOWZyOy7FVvZKHXpvThd8/BRfDKWM/aC6z9XhmPNlfJPc1r
 EXtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IrQFvalQjAj1dvXxeMLmGupr0Xalp7s3s+2Q95bH9WM=;
 b=o80m+V8SyJinKvCLgvyKL5QYIH+PmEl2VgAHYbeUv3DWeMnXSaLqaWWPI0eBhsV/JY
 FcYvQ18fCFhD42+oHGvqYYhPYIJ1digx2XXBjXJVNoyr+/exk5sngHgcmsHVz5S1NLNM
 nG72O/0DSBE6CpKcmUHKMIWwd9vraYylQtgcTe6JBR3Egv+L35O+fUSuZ2uyFQGhYHDT
 vXcYRKqF1jETtuOPdyTZ4EU7cbbwOosz+KgKuAc9pMDoYBiu/xO0Sw9VO2KDuDOayVxn
 xk9Xa9TbTYJeSv664DhFQrIELgoo2UWJd0tXMQZcfgAxegMD06mJxHXMhW6wCEHlqgJU
 mLnQ==
X-Gm-Message-State: ANhLgQ0uYJPZsrhL5JaG4TZFANNX0ssA3Shcig2vDkGKt90vnPIM8M16
 UkJsTr80OQI6i3u3y9Q9jZxgUT6Q1ywQSr8R5ZD9aQ==
X-Google-Smtp-Source: ADFU+vtXQmktUcTHl6TW4J0xBbd4s4otsgEIvyW1XjWHoK6S1beVJz3AgqGu1oMH7xzj5XnilPrNjh+Wyq+8fDLC9io=
X-Received: by 2002:ae9:ebc1:: with SMTP id b184mr3892063qkg.49.1584637383473; 
 Thu, 19 Mar 2020 10:03:03 -0700 (PDT)
MIME-Version: 1.0
References: <1583225220-26137-1-git-send-email-vincent.chen@sifive.com>
 <mhng-a17f59fc-9e51-4c9d-9b4b-4c707825c459@palmerdabbelt-glaptop1>
 <20200319114032.376mvrq3npyxej5q@holly.lan>
In-Reply-To: <20200319114032.376mvrq3npyxej5q@holly.lan>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Fri, 20 Mar 2020 01:02:52 +0800
Message-ID: <CABvJ_xjYpWYR=OPuTRESU+22gy3tdFtVPSEjWRL8S00g2B1r2g@mail.gmail.com>
Subject: Re: [PATCH 1/5] kgdb: Add kgdb_has_hit_break function
To: Daniel Thompson <daniel.thompson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_100307_820507_A4023CED 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>, jason.wessel@windriver.com,
 Palmer Dabbelt <palmer@dabbelt.com>, Douglas Anderson <dianders@chromium.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 7:40 PM Daniel Thompson
<daniel.thompson@linaro.org> wrote:
>
> On Wed, Mar 18, 2020 at 11:03:25AM -0700, Palmer Dabbelt wrote:
> > On Tue, 03 Mar 2020 00:47:00 PST (-0800), vincent.chen@sifive.com wrote:
> > > The break instruction in RISC-V does not have an immediate value field, so
> > > the kernel cannot identify the purpose of each trap exception through the
> > > opcode. This makes the existing identification schemes in other
> > > architecture unsuitable for the RISC-V kernel. To solve this problem, this
> > > patch adds kgdb_has_hit_break(), which can help RISC-V kernel identify
> > > the KGDB trap exception.
> > >
> > > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > > ---
> > >  kernel/debug/debug_core.c | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > >
> > > diff --git a/kernel/debug/debug_core.c b/kernel/debug/debug_core.c
> > > index 2b7c9b67931d..01bc3eea3d4d 100644
> > > --- a/kernel/debug/debug_core.c
> > > +++ b/kernel/debug/debug_core.c
> > > @@ -417,6 +417,18 @@ int kgdb_isremovedbreak(unsigned long addr)
> > >     return 0;
> > >  }
> > >
> > > +int kgdb_has_hit_break(unsigned long addr)
> > > +{
> > > +   int i;
> > > +
> > > +   for (i = 0; i < KGDB_MAX_BREAKPOINTS; i++) {
> > > +           if (kgdb_break[i].state == BP_ACTIVE &&
> > > +               kgdb_break[i].bpt_addr == addr)
> > > +                   return 1;
> > > +   }
> > > +   return 0;
> > > +}
> > > +
> > >  int dbg_remove_all_break(void)
> > >  {
> > >     int error;
> >
> > Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>
> I've been slow to review this because I wanted to take a closer
> look at whether this issue is unique to RV or whether one of the
> other architectures solved it a different way so, out of interest,
> did you do any investigations in this direction?
Hi Daniel:

Yes, I tried to find references from other architecture such as ARM,
ARM64, MIPS, and x86.

However, I found ARM, ARM64, MIPS uses a specific trap number to
distinguish the purpose. X86 does not embed a specific number into the
trap instruction, but X86 uses the undefined instruction, UD, to
implement BUG() or WARN(). Therefore, X86 just needs to distinguish
the debug trap between debug tools. Unlike X86, RISC-V only can use
"ebreak" instruction to implement the BUG() related functions and
debug features. Therefore, I decided to create the kgdb_has_hit_break
function for RISC-V port to distinguish the purpose of a trap. If I
have any misunderstanding or you have a better idea, please feel free
to let me know.
Thank you

