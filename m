Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AABB9D49
	for <lists+linux-riscv@lfdr.de>; Sat, 21 Sep 2019 12:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FT7n/AIYL1A0P8pXMFV37RJFq0J4+XWA7Mf0yq8rLNw=; b=aZmjryWay7mVap
	GJxJTGRbFDlc/G3fGCsbADVFTNI5wLSydddVneOQmxzL7gs42W0YJxwhUyOpSlgoSuBu9AIXPUdC5
	PbbbBmbL0547insDiZ8I/a7J57u0c4/YpWDDe7NcJoyz3y/BAvuFdBV+Hgpwzbfyx4dsfLWJrKAI2
	0W3/0KGfOP9ppoMzBc+uxM+cPsx7ULCpmxjEo4DM4/LJhlz8Ge97rZ9e+3Yr+gfRpbrpkTyIyxlxq
	1SBOZ2MG/hrf3PeeOxCCIJ/Jtf1o0u7JVF871zDBH/HxH15lZEwrusAlro+dzXMpTOHN/qOpXbOkx
	6qPFdNrVDu8WPXrWgRIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBcIl-0008IF-Bl; Sat, 21 Sep 2019 10:07:39 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBcIg-0008HW-St
 for linux-riscv@lists.infradead.org; Sat, 21 Sep 2019 10:07:36 +0000
Received: by mail-oi1-x244.google.com with SMTP id k20so3858519oih.3
 for <linux-riscv@lists.infradead.org>; Sat, 21 Sep 2019 03:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=q28F24xv9t76PXlL9UOYHP9IP5vFDqVp5ZAksX0BNbE=;
 b=cDd0OVmejdLKlV2PZdG18nFyRW7nybK9TRGsyVcX9DHGDrbm9IEv2MdU1uVeh9yNzp
 5MFj6/qy7dyMEKta/CPPGhZywidrrI8HE0IbbrOKdI55ya6N6vllOffgTWPyHXCAU4X8
 wjHbA7MDg56aMOukFF92q+UjdcsHFag1AMJueoyKLEByyXsWEYkvqoH6DNzUWzLJ4Ulu
 po8vwvnbkUaW9dWZGnOgWApEtFTyvt4eO7Xj3B5ygK7ml8Wii2GMQgVgnORczbhTh+Po
 0bi/zMiv3wf7hMIn+VD4EDJa4w9IoXsD/9UT/x46ov2BcK9OMjuMfoAjxA7M7hfafr6S
 TjNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=q28F24xv9t76PXlL9UOYHP9IP5vFDqVp5ZAksX0BNbE=;
 b=c2ANIpcT3stjmfrfqu/0QjwOSaeMuaJt6xLfdfFz8xHcfTVvBxYKZy2trfhYCvi+Ra
 OvxkllYDYkyyrE6ea7m4rGXLjpZ827YgH9x+Fr1dJQXGrSZNI12jBF1SPLxlzXbfaNIY
 aZ04RGMRZ5Z7gQgATcCcwQAqiQvzrhBVTO+5MDL3Pxs4nRpYgZh4GW0C4uMUMs7xfnPl
 KPqD3/qj9Gs8ulndA8g13kjKe+d0ayFQxI4vR5IP/kHl4IEuX/e8J6Tc2/GeV7wGlxOo
 ki5q80mIwXXTa+34PMwYXFO8Xe6K4bjqdN1n1KT86RBrAg1wo9FqAp6DqY6TrWeOqjYV
 01Ag==
X-Gm-Message-State: APjAAAX5geR8AriVJ8acB1YSzE9FqZmebFg0r2ITPTk+qj0+n6bMHWmC
 N5zzOiJdMq1gkqGBZyvInMqqMA==
X-Google-Smtp-Source: APXvYqwoE0py97QUrvqBS/mq5xzW9rS86oL4ZbBn9QhAv61E1kyEn/zv/fXJ2qOOXGOdMY4/wXvM7A==
X-Received: by 2002:aca:540a:: with SMTP id i10mr6141687oib.108.1569060451309; 
 Sat, 21 Sep 2019 03:07:31 -0700 (PDT)
Received: from localhost (184.sub-174-206-23.myvzw.com. [174.206.23.184])
 by smtp.gmail.com with ESMTPSA id 67sm1566624otj.21.2019.09.21.03.07.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 03:07:30 -0700 (PDT)
Date: Sat, 21 Sep 2019 03:07:19 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] riscv: resolve most warnings from sparse
In-Reply-To: <20190919173142.GA26224@infradead.org>
Message-ID: <alpine.DEB.2.21.9999.1909210301470.2030@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1909190125400.13510@viisi.sifive.com>
 <20190919173142.GA26224@infradead.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_030734_963808_75C1A90B 
X-CRM114-Status: GOOD (  22.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

On Thu, 19 Sep 2019, Christoph Hellwig wrote:

> On Thu, Sep 19, 2019 at 01:26:38AM -0700, Paul Walmsley wrote:
> > 
> > Resolve most of the warnings emitted by sparse.  The objective here is
> > to keep arch/riscv as clean as possible with regards to sparse warnings,
> > and to maintain this bar for subsequent patches.
> 
> I think this patch does just way to many different things and needs
> to be split up into one patch per issue / code module.

I agree that it's hard to review as it is, and will split it up into a few 
smaller patches.

> 
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/entry.h
> 
> For example adding this file should be a patch on its own.  It can
> also move to arch/riscv/kernel/ instead of polluting the <asm/*.h>
> namespace.  That being said I'm not sure I like this and the
> head.h patches.  Just adding a header for entry points used from
> aseembly only seems rather pointless, I wonder if there is a way
> to just shut up sparse on them.  Same for most of head.h.

If you have another suggestion, please let me know.  Adding this 
prototypes is perhaps not ideal, but I personally don't see any downside, 
aside from aesthetics.  Several other architectures have either asm/ or 
kernel/entry.h, and a few others have head.h, so it's at least in line 
with existing practice.

> 
> > @@ -61,6 +61,9 @@
> >  
> >  #define PAGE_TABLE		__pgprot(_PAGE_TABLE)
> >  
> > +extern pgd_t swapper_pg_dir[];
> > +extern pgd_t trampoline_pg_dir[];
> > +extern pgd_t early_pg_dir[];
> >  extern pgd_t swapper_pg_dir[];
> 
> This seems to add a duplicate definition of swapper_pg_dir.
> 
> > +extern asmlinkage void __init smp_callin(void);
> 
> No nee for the extern.
> 
> > index 905372d7eeb8..d0d980d99019 100644
> > --- a/arch/riscv/include/asm/thread_info.h
> > +++ b/arch/riscv/include/asm/thread_info.h
> > @@ -58,6 +58,8 @@ struct thread_info {
> >  	.addr_limit	= KERNEL_DS,		\
> >  }
> >  
> > +extern int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src);
> 
> This really needs to move to a header outside of arch/.  Also no need
> for the extern and as-is this adds a line > 80 chars.
> 
> > +#ifdef CONFIG_PROFILING
> >  /* Unsupported */
> >  int setup_profiling_timer(unsigned int multiplier)
> >  {
> >  	return -EINVAL;
> >  }
> > +#endif
> 
> Yikes.  All architectures either just return 0 or -EINVAL here,
> and the caller has a spurious extern for it.  Please just remove
> this arch hook and add a Kconfig variable that the few architectures
> currently returning 0 select insted.
> 
> > +static void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
> 
> This adds an > 80 char line.
> 
> > -pmd_t early_pmd[PTRS_PER_PMD * NUM_EARLY_PMDS] __initdata __aligned(PAGE_SIZE);
> > +static pmd_t early_pmd[PTRS_PER_PMD * NUM_EARLY_PMDS] __initdata __aligned(PAGE_SIZE);
> 
> Another one.

Thanks, will review the above issues.

> > --- a/arch/riscv/mm/sifive_l2_cache.c
> > +++ b/arch/riscv/mm/sifive_l2_cache.c
> > @@ -142,7 +142,7 @@ static irqreturn_t l2_int_handler(int irq, void *device)
> >  	return IRQ_HANDLED;
> >  }
> >  
> > -int __init sifive_l2_init(void)
> > +static int __init sifive_l2_init(void)
> >  {
> >  	struct device_node *np;
> >  	struct resource res;
> 
> And this needs to be applied after this file moves to the right place
> and isn't completely bogusly built into every RISC-V kernel.  Not all
> the world is a SiFive..

Once you can get the ack from the EDAC maintainers, I'll most likely apply 
your previous patch.  In the meantime I'm planning to get the sparse fixes 
in early, since they are long overdue.


Thanks for the review,

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
