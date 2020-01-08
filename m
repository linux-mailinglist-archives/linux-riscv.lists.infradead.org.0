Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0D4133934
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Jan 2020 03:40:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=imZn+Ec+Is2o2WWsfLwBIjwDvv9tZ0cym99jWLIGp0g=; b=DqPFdc9lAGvRZoLbgGRr964F+
	y/UC6ruL+Uv38PLqy/g/AL/rqMrP+lS+zng8rHCCra7eBLNiOJASzacpRLd9DKmdcrMR+qiak6TI7
	hyGPpq/pHtQTJe7nJvj92qWDicJ3Mqb961KzDo9QcKweUpMhm9R3wljlOYmvbw6MnZdQO8Zuk2wf5
	VzpC+e8GU5KfD/EHj9NKFDCFiqmjr36eTUEUEkfU9FJDieRCfx/7gxGx2M9VSxRV79S9HSmqP+yda
	R+2KeHgVIRwWRB21uPE+yUKZxTWr8/xwgXS9x2BIlGlO+UOqv+dObRkKaGunCktW+H68fVDJw3MZp
	8V1Z+VFNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip1GD-0005sv-Fd; Wed, 08 Jan 2020 02:39:53 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip1GA-0005rg-DN
 for linux-riscv@lists.infradead.org; Wed, 08 Jan 2020 02:39:51 +0000
Received: by mail-qk1-x744.google.com with SMTP id z76so1417865qka.2
 for <linux-riscv@lists.infradead.org>; Tue, 07 Jan 2020 18:39:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=imZn+Ec+Is2o2WWsfLwBIjwDvv9tZ0cym99jWLIGp0g=;
 b=RTIHSC/+7ysjfzJoIYGjrcrngxwtrtX8VdXagMorsS5Ct9CaD6REuwypvXPlyJHBJO
 pGMfW2ZMmB5uGsRSrnAlxL45XCtymJBLzJyeLNT8QhUBhUC6VbQRQ3B5addAuDXwQ6YH
 2rOvYUzgJGMK716x4tTn6y3vmkfR3TgM3tYkZyGwXRvFuM0CbR9TVr8RYK+NFWhWjokW
 x24dyeb1A+WOc9thbtX6VE3tkn+u2pQoZHKic4tcBHljKNkb6K4VJwDp1udY4oUyaoWE
 tDp5ZHyi5nCEFzqWBSC3KKQ75FJ7aPREZzEfZ9ItFHOFBBBVf+V01ZRNN8fHf1+2A+u/
 0czw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=imZn+Ec+Is2o2WWsfLwBIjwDvv9tZ0cym99jWLIGp0g=;
 b=UlKihaJma97Ae8CiKe2QLgPUDKwOAToR8KDEIKfPHHwRKHZq5tMZCYdmQNQ3Cf7icq
 F0uUxuQDqqPtyN0pdY/9ERkmDtcT/kz5M93mMFXS5lruvgh5lOHeqfTfRWSvzbYSA3Q0
 oqVBWSW1izDCw8fak9rlIhiflv63OkXzBdHrQcEzeLpTJTKN6p7ARm60uAJhqqXwUv50
 6ly6MnKk6eO5Uiw8lkSHhQ72miE6jnemhDUxU54j0Kl5YTEp+Ht3PWGQosqxyjFBfh9Q
 VwU6fN/YhqDo1vhsoqDjITd1qLAChikPFg27pcg173bo9obQziSPkMAPXpaCVGLNXpzv
 s77w==
X-Gm-Message-State: APjAAAUeNPgvxTBQ2Ly+/Tg0TEz24EnNLg7iUIo1tWFJSNSFB3TN0kcV
 j6+jmXZ4/HXAj8yU1hj51oi0xHMzsLKpCSMVozJtXQ==
X-Google-Smtp-Source: APXvYqx5TRVgUJMNHuC2iaHQrk2At/FlzCevHvo++QNAvQL3DZYAMXmCZ3KV6nWwtYHpKK6u/lh94EXtMK7n7GrVOjs=
X-Received: by 2002:a05:620a:992:: with SMTP id
 x18mr2284951qkx.327.1578451187096; 
 Tue, 07 Jan 2020 18:39:47 -0800 (PST)
MIME-Version: 1.0
References: <20200107091618.7214-1-greentime.hu@sifive.com>
 <alpine.DEB.2.21.9999.2001070253000.75790@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.2001070253000.75790@viisi.sifive.com>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Wed, 8 Jan 2020 10:39:34 +0800
Message-ID: <CAHCEehLz9MfTyOPf42xPbT7FM8oO--C-hT4eVcNkXMG1vnBjmg@mail.gmail.com>
Subject: Re: [PATCH] riscv: to make sure the cores in .Lsecondary_park
To: Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_183950_583008_83C31C3E 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: greentime@kernel.org, linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gt <green.hu@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jan 7, 2020 at 6:54 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Hi Greentime,
>
> On Tue, 7 Jan 2020, Greentime Hu wrote:
>
> > The code in secondary_park is currently placed in the .init section.  The
> > kernel reclaims and clears this code when it finishes booting.  That
> > causes the cores parked in it to go to somewhere unpredictable, so we
> > move this function out of init to make sure the cores stay looping there.
> >
> > Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> > ---
> >  arch/riscv/kernel/head.S | 13 ++++++++-----
> >  1 file changed, 8 insertions(+), 5 deletions(-)
> >
> > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> > index f8f996916c5b..d8da076fc69e 100644
> > --- a/arch/riscv/kernel/head.S
> > +++ b/arch/riscv/kernel/head.S
> > @@ -217,11 +217,6 @@ relocate:
> >       tail smp_callin
> >  #endif
> >
> > -.align 2
> > -.Lsecondary_park:
> > -     /* We lack SMP support or have too many harts, so park this hart */
> > -     wfi
> > -     j .Lsecondary_park
> >  END(_start)
> >
> >  #ifdef CONFIG_RISCV_M_MODE
> > @@ -303,6 +298,14 @@ ENTRY(reset_regs)
> >  END(reset_regs)
> >  #endif /* CONFIG_RISCV_M_MODE */
> >
> > +__FINIT
> > +.section ".text", "ax",@progbits
>
> Can the __FINIT be dropped?

Yes, Paul.
It can be dropped. I'll send v2.

