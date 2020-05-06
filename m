Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B1E1C64B8
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 02:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3iD14m2oqtz2m5olanAMCvHCDcEx9U6emVEbdAioaj8=; b=sVcEc//RwXd/vn4ghKoE8D7z9
	TxBMytUXMWugWnHSVUUT3b2DhJhlPQ59ZwwEgHqrwx3fDeUXp+kLk6SB6MnZLLE5L5VHX49ihwMdO
	lP+x6MFFpYvl6nDfFROEtXu/DM1h5/LTqJwfPTuysLz7SU963Q3PO7RxeryNLkB7iZjhPt4QJgQM7
	iVHlx0jB6fsqZSiSyUC9R/5RkUCmWZ1yvXFghLhXqDIwLFCvgLoOhs8uh1Q6quWuybTQmPX9Fnjun
	QkHivac/3W5eHyQm5sAYDejndDRUDKpCe8LfUu/B8v21cMIXPRpw/UsANXxYRKfTTMMLkjvE57DsI
	qe/umAH5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW7U5-0006jN-Ls; Wed, 06 May 2020 00:00:21 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW7U2-0006h4-6S
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 00:00:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id u127so391663wmg.1
 for <linux-riscv@lists.infradead.org>; Tue, 05 May 2020 17:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3iD14m2oqtz2m5olanAMCvHCDcEx9U6emVEbdAioaj8=;
 b=nSJZu/FoIdJ+qkbbRlKX/R3Ewl+m3sPF9nEVWJt+/W45oSngIvx5d8Qphlbp4P08bN
 Pu4Emc3Zg4MMm+MaCwmWTGETQmAMJ9sy8sUHu2MUHmTq8ZLHs9VkLM9MBJzyEbkYqVgU
 EAx3O9Vf55SxohUSlOgAM62+r6tPhWgoLzQSI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3iD14m2oqtz2m5olanAMCvHCDcEx9U6emVEbdAioaj8=;
 b=c1Pu9n7rUoySN1DDvphD7B4JCnDctMAH3LN8yEJkXK3/ALgn/MtWyIp+JhA28ph1vm
 EAVOieI2JVTwOxHowS5O8Ncf0UJW4bK3gfMWyibOVo+wvz3oeD9RG09jPGZF9GW5dH8X
 HSM0w6EbIvj87uwVYsk7Luisd0T7PrQXqBpAMeJcmpXbN+1dpsW1IdQvXTpNwiDvD/27
 za9alkZpfsTKn06HbPpY8/vO0jnvZC13eyCjtMI5882vNe1Zz5c2HDd6+FELsjcy4uVy
 uz/CiTVEg68Ur8HljCTmEnXsqlCaKDNp6aCl1cTzgEZ5Rm+AvyIGwdYxqS9VKYJZQ+NV
 ymWw==
X-Gm-Message-State: AGi0PuYYxj2tFvCBfl1xADwnJLZRYifW1fou4dVJzlmKIpe2QgQxhI/8
 BjAT8gnr1wdUpTBb/TCLlM6GATS+ZUGtkT5tXQVR
X-Google-Smtp-Source: APiQypIMLYZZDdT77MeBbFFO6dqLUMN5K3k4qgrEOS96GhN+81eZdKIvX9PkmZg2Z83Itjj9g0U9RLobX+Eh/CL/mrQ=
X-Received: by 2002:a7b:cdfa:: with SMTP id p26mr1122660wmj.186.1588723216414; 
 Tue, 05 May 2020 17:00:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200504040319.31423-1-atish.patra@wdc.com>
 <mhng-a3f16502-c8cd-46db-afa1-86df18b3778d@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-a3f16502-c8cd-46db-afa1-86df18b3778d@palmerdabbelt-glaptop1>
From: Atish Patra <atishp@atishpatra.org>
Date: Tue, 5 May 2020 17:00:05 -0700
Message-ID: <CAOnJCUJtnVjYwfaHbiUdO4SqPk8rY0q0uYckNJpQpc7jK0Pz7g@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Remove unused code from STRICT_KERNEL_RWX
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_170018_298889_3CC26CD1 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 4:55 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Sun, 03 May 2020 21:03:19 PDT (-0700), Atish Patra wrote:
> > This patch removes the unused functions set_kernel_text_rw/ro.
> > Currently, it is not being invoked from anywhere and no other architecture
> > (except arm) uses this code. Even in ARM, these functions are not invoked
> > from anywhere currently.
> >
> > Fixes: d27c3c90817e ("riscv: add STRICT_KERNEL_RWX support")
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/mm/init.c | 16 ----------------
> >  1 file changed, 16 deletions(-)
> >
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index b55be44ff9bd..ba60a581e9b6 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -501,22 +501,6 @@ static inline void setup_vm_final(void)
> >  #endif /* CONFIG_MMU */
> >
> >  #ifdef CONFIG_STRICT_KERNEL_RWX
> > -void set_kernel_text_rw(void)
> > -{
> > -     unsigned long text_start = (unsigned long)_text;
> > -     unsigned long text_end = (unsigned long)_etext;
> > -
> > -     set_memory_rw(text_start, (text_end - text_start) >> PAGE_SHIFT);
> > -}
> > -
> > -void set_kernel_text_ro(void)
> > -{
> > -     unsigned long text_start = (unsigned long)_text;
> > -     unsigned long text_end = (unsigned long)_etext;
> > -
> > -     set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
> > -}
> > -
> >  void mark_rodata_ro(void)
> >  {
> >       unsigned long text_start = (unsigned long)_text;
>
> Thanks, this is on fixes.  Are you going to remove the ARM code as well?
>

Yeah and also I realized that I forgot to remove the declarations from
the header file.
My bad. I will send out a v2. Please drop this one and take v2.

-- 
Regards,
Atish

