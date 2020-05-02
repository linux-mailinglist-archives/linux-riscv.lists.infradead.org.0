Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C331C237E
	for <lists+linux-riscv@lfdr.de>; Sat,  2 May 2020 08:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JhvioNVfM97l3WSCiP+ZrH6wOXH1bX9mQnh1D6DTF2o=; b=J3eXVATKCZOqff7fTvttArBuH
	NngakRgH5gEEJFb0FyyFeWVVhGHIAKyuH636U60Cu5PwqXxWiDLXebxOdl7QGfjlXYNlZR24y6EXI
	DmpdaTV0vQUj+0u/k5j6pud/VKyWxpsnpZnKlWrlGvx7Lk9XYSKwk989k2B0RZvw/lGLvRd6wmwU6
	4MD/ufjMPnr1rBO+f8dImrUmd5pSVMKbGvu5D4+z3+3RJJbSXeZva5KxCuvQ7BbYUcp2TR3vFLXup
	atonYKKhspW8sK5VpWJmbOnS5LVIkjS9bIs1acN2fEoY+kVwxhcvckvOLXEKPcHrphmoD2LI19s8W
	FNWA5XNAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUlP7-0007YN-Ce; Sat, 02 May 2020 06:13:37 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUlP3-0007Xk-Pt
 for linux-riscv@lists.infradead.org; Sat, 02 May 2020 06:13:35 +0000
Received: by mail-wr1-x444.google.com with SMTP id l18so3605209wrn.6
 for <linux-riscv@lists.infradead.org>; Fri, 01 May 2020 23:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JhvioNVfM97l3WSCiP+ZrH6wOXH1bX9mQnh1D6DTF2o=;
 b=WUxjxADivgi7evwQJxeX8FTGyQPfSbIyMxWdi09e0Gl5jNUaAviU+m7qyQa1vOYuNX
 Ib8FegKZZBHhLQLUq/H4Fqhkrops2Aq7ZifwGWe6RLYxu4SNEYA0wF0SapU8R+1VNEEb
 B1rcWhlN+jLa6I6VRM1Qi97OwvwvTCTqs+B47jxFWAtYVWqjwltT8RxVXKR0EvXHPjTi
 hIHTYMMqCxhzlcd+Kkt5IZRB7rYsvkMM2sjKYtGhokPyvPS0SBsnh5k137vzSJa+NLvk
 wbqDyl332okUupQ4LPaV7PMQEDmTNqsgX5Q4ov3vRj+GBytFtPTByPCvWM8is13zpIlq
 QXZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JhvioNVfM97l3WSCiP+ZrH6wOXH1bX9mQnh1D6DTF2o=;
 b=pjZkcQrval8CFkAXmfdv+aTj8xYooSLfY1P+zrkzxwqMt0roJaW60WKultNYq8SelJ
 4n+4eC5ncz8qPj2NgJTFUwVOuv6IlubO/SKvtEm+ydk7j9G7qPVJb3i76FoYdwp7MPFl
 6RBjyTX8+nPT054bW08epp6hFcbL59ftGLYP3WNU1zkgJVrfHsXso+EZ2fkhEqEWeWLY
 hsZha4dP5PmbchjCGtERQTJJwk0GaUnS7v2GG7+xJ085AQ13kze4T0NcekGa28K+pVMn
 0uL/9MZT4X+IanmQaC2ijJWXrxYGWm7zVI7ZTUUVqgeDFZanhvGlh89QBmObRtqFHPIG
 VlVg==
X-Gm-Message-State: AGi0PubW++PNc2gTaYaywKPfIMoygoPn3DfTpcxidGAWteLXk3Y4jwzM
 eeCTrjN1F64DhsCz3Oz6qxiggLeii5hnrBOU6UfERQ==
X-Google-Smtp-Source: APiQypJJ/DcxxJ+twQ2TVpRpb4je3K4adn5gd15IIE968xX2S249iENDB9dT++Q4fmWa5mZd8TTc58vooYzMz2oxbJk=
X-Received: by 2002:adf:b35c:: with SMTP id k28mr7648219wrd.61.1588400010329; 
 Fri, 01 May 2020 23:13:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200430095325.111441-1-zong.li@sifive.com>
 <CAOnJCUJBJ3wrY-KY3YgD-qJfr7dsWzdA83fxFYmOTmjsrYgOfA@mail.gmail.com>
 <CANXhq0qk_GQubgWB9=2uMVDSLSCWaiLtPkBcHQCPLCHyVrtdnA@mail.gmail.com>
In-Reply-To: <CANXhq0qk_GQubgWB9=2uMVDSLSCWaiLtPkBcHQCPLCHyVrtdnA@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Sat, 2 May 2020 11:43:18 +0530
Message-ID: <CAAhSdy0QRMCm0jWe2azQ-6_D3KPRO60YEX+Wk-+HMrJfwYn_sA@mail.gmail.com>
Subject: Re: [PATCH] riscv: force __cpu_up_ variables to put in data section
To: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_231333_865626_FF12E747 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atishp@atishpatra.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, May 2, 2020 at 11:30 AM Zong Li <zong.li@sifive.com> wrote:
>
> On Fri, May 1, 2020 at 2:23 AM Atish Patra <atishp@atishpatra.org> wrote:
> >
> > On Thu, Apr 30, 2020 at 2:53 AM Zong Li <zong.li@sifive.com> wrote:
> > >
> > > Put __cpu_up_stack_pointer and __cpu_up_task_pointer in data section.
> > > Currently, these two variables are put in bss section, there is a
> > > potential risk that secondary harts get the uninitialized value before
> > > main hart finishing the bss clearing. In this case, all secondary
> > > harts would go through the waiting loop and enable the MMU before
> > > main hart set up the page table.
> > >
> >
> > That would be only true if you are using random booting protocol with
> > SBI v0.1 implementation.
> > With HSM extension in place, all the secondary cores are waiting in
> > firmware. The booting core
> > will bring them up one by one from cpu_up method.
> >
> > The HSM extension is already available in OpenSBI v0.7 and Linux
> > kernel 5.7-rc1 onwards.
>
> If I understand correctly, the newest kernel still works with earlier
> OpenSBI than v0.7 or BBL. It seems to me that we need to consider the
> use cases if we don't limit it to up to OpenSBI v0.7.

I think the commit description should clearly state that the issue will
manifest only for random booting of multiple HARTs which means it
will manifest only for BBL and OpenSBI v0.6 (or older).

Regards,
Anup

