Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C2297087
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 05:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=upO4+N+5vdt8SgvR6Cvf7YpdW28p9/lSZ249oNxBraU=; b=hIQyKJIiMsiIli
	w9rcPl1GKeFKOirfRewaeFrvRFouG3o0zElgszTkzFhnOpzj8DCQrL4VvdazLl5k+0kd/l75vdGK8
	+lf+wZOYmcJFCA0XIeYqZjShUzy9u/js06MCIe1lt+XFqPlmEcYw1yKc9boLs5/jBaZpMBB8Wy2hM
	PmEmgnB9OqqALEdohKKaF+J53McKdXpMk3Yhvm+Fty0XTgMSoPW5Srq2dwf+PAG5pbx6MlEL4739s
	hLHvgEHwmX/fgjE28MCLGHyODaaErKaGCl667KujTBBqVRGwq8lA92XpUI5xIVwHZL3btHhN7AdEw
	eN8miFkBCor+tw/Ma5hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0HgJ-0001VV-87; Wed, 21 Aug 2019 03:53:07 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0HgE-0001V6-SH
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 03:53:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id m125so620832wmm.3
 for <linux-riscv@lists.infradead.org>; Tue, 20 Aug 2019 20:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q866pfLZUUGzykCVlgEKOZZOziqbhijhD1KhBLgHDuA=;
 b=CC01joeanbShowTYisfRKQQ61kAqiysEDe7KMhHsnvznkhCvA0zOqJJ3ZLtNn9TzNR
 d4q11HxmhCYM5xBMBbmm/7OPjW5vwv/MNCer3+ZWkpumdjU9siisBaMAaJVEBXnFDOje
 BFI3q5R0PpiqBxvKVcxTuRSpQntslzKq3jtR2aldxgBB+zHHA5GG+brSqjTztNsmm2dZ
 Wa4Voa1vfrl7cagd03kgcjwZbJXGmwO1u9NK0CcoOIgTt42geUwgVkA977wX2Nkkawth
 RjbTy+5+7/G4T1cDWvaAS3nLUi9GQWtaZ1T/t8tBFXAR096gRYYUGmTlkQngJU0/xfoQ
 kbbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q866pfLZUUGzykCVlgEKOZZOziqbhijhD1KhBLgHDuA=;
 b=O8uEfUk5PBNVLtE16sncXpzVTdFo9BB/wf8F/COxScoFmkFmznx7G4Zs8Q2h1GcQ3f
 YBjuCEyzET0S4Dwej1NxLZvGQoC7v+LNxHOD4JBtk44h6heLVySoT6hv0F7HutWuBz2c
 6f6PHPs8Ghwqc/inQNVYuxJvHMxtnhc7oDFb/tcwytetN/fAFrGner8yJmjBzOr//OdB
 msKsj2KocPucAPYraWrKUAQVtagLuhoNsFkcB1rWD55ZcnWbeWASmO6oJP/rSB5Qmvyi
 gh6SLgY5Xjd+WO8ku+p0JHaUUrC6Tap/X3CJU57QrjT2531e5txdJ/ukbwvCnrPiJwtu
 Ljmg==
X-Gm-Message-State: APjAAAUlVpCpoMyKxKQ5Z8+vxPP8cup1qawiRpPN5+ZAlIC5AuBVh76v
 VAzwA/n+BVxrUcGH++fQL+UEhUcb6sx7feuuNyiGeA==
X-Google-Smtp-Source: APXvYqzDZPixEa7x5dg6CFkkM3l2F1MJKZKytyiRjSYnXVT5ZH6+qKWyalba8BS/+Y8qD7J/UcdZL695Rb+CDBmimGQ=
X-Received: by 2002:a1c:3d89:: with SMTP id k131mr3004134wma.24.1566359579978; 
 Tue, 20 Aug 2019 20:52:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <mvmh86cl1o3.fsf@linux-m68k.org>
 <b2510462b55ffd93dba0c1b7cc28f9eef3089b50.camel@wdc.com>
 <20190820092207.GA26271@infradead.org>
 <76467815b464709f4c899444c957d921ebac87db.camel@wdc.com>
 <20190821012921.GA30187@andestech.com>
 <20190821014052.GA25550@infradead.org>
In-Reply-To: <20190821014052.GA25550@infradead.org>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 21 Aug 2019 09:22:48 +0530
Message-ID: <CAAhSdy0GX9BbayYScsm2_Mvi0hDH-y0UVvTWFGLbKY-rE8TfZQ@mail.gmail.com>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
To: "hch@infradead.org" <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_205302_977921_7CD81D90 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Alan Kao <alankao@andestech.com>, "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 7:10 AM hch@infradead.org <hch@infradead.org> wrote:
>
> On Wed, Aug 21, 2019 at 09:29:22AM +0800, Alan Kao wrote:
> > IMHO, this approach should be avoided because CLINT is compatible to but
> >  not mandatory in the privileged spec.  In other words, it is possible that
> > a Linux-capable RISC-V platform does not contain a CLINT component but
> > rely on some other mechanism to deal with SW/timer interrupts.
>
> Hi Alan,
>
> at this point the above is just a prototype showing the performance
> improvement if we can inject IPIs and timer interrups directly from
> S-mode and delivered directly to S-mode.  It is based on a copy of
> the clint IPI block currently used by SiFive, qemu, Ariane and Kendryte.
>
> If the experiment works out (which I think it does), I'd like to
> define interfaces for the unix platform spec to make something like
> this available.  My current plan for that is to have one DT node
> each for the IPI registers, timer cmp and time val register each
> as MMIO regions.  This would fit the current clint block but also
> allow other register layouts.  Is that something you'd be fine with?
> If not do you have another proposal?  (note that eventually the
> dicussion should move to the unix platform spec list, but now that
> I have you here we can at least brain storm a bit).

I agree that IPI mechanism should be standardized for RISC-V but I
don't support the idea of mandating CLINT as part of the UNIX
platform spec. For example, the AndesTech SOC does not use CLINT
instead they have PLMT for per-HART timer and PLICSW for per-HART
IPIs.

IMHO, we can also think of:
RISC-V Timer Extension - For per-HART timer access to M-mode
and S-mode
RISC-V IPI Extension - HART IPI injection

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
