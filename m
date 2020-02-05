Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 359F81529A7
	for <lists+linux-riscv@lfdr.de>; Wed,  5 Feb 2020 12:08:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=etSf4B+EensBg61z3vriU5Um0L1QiBpVSWuAqrdE2/U=; b=hzzIOt6iYntM/2KeTHfeN5CFs
	+tiY/1EuMeHc7DEY/QlCJSSI1DqH002vpFS7c1xbrhpL93AMsSK1mncGLIiNP/ifxF+b1GCVOdcaF
	BltJRfioNZKt+l5ed27HXOnT/gpBDddTl0xCSrKI1pmympy4YPjSH6i87nqzw8543OQjx30Kwg92U
	Ry+LtWb2QhWW3zpzFYStEg6XGiyBb3Wg4rFLYjxeGd+XhpzHiNHn9L3QzNUu4Q+LDFQ8cekkq7Cd/
	WHOe4mfz0ABO24pzVPxobJ5eYZ2XYS9EVUnV/PNDLRHd/zKElIVNMLn6YkF4KOXdA9EVN/zyHecGi
	IYuXIrlcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izIXO-0006Yw-RL; Wed, 05 Feb 2020 11:08:06 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izIXL-0006YK-Dd
 for linux-riscv@lists.infradead.org; Wed, 05 Feb 2020 11:08:04 +0000
Received: by mail-oi1-x241.google.com with SMTP id z2so329307oih.6
 for <linux-riscv@lists.infradead.org>; Wed, 05 Feb 2020 03:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=etSf4B+EensBg61z3vriU5Um0L1QiBpVSWuAqrdE2/U=;
 b=eFe6RQr5RpKnzH2j7PZvyvd4TorbvBnsSnrE/yPvo8SU7prQg6cfnCRWxN5BEdM7gb
 T25HEMKhrVCR0ps+u6U5B8fOTwMf3YlJwOPsZ2Hkf3jdKHsohwHwdsJc8hL75e7xSGPm
 O0/AdEOyJgpRx/tXe9wst4f7ORH/0hlJr8aTzPwECM90JiTwd55p4pHHVQBWcLd8kR3q
 t8mWERXpjD13KQDmQf+UUvGOZh/RZ+fuo1xX/vIvBLh8uT110SYgsjCOcc/JbE2jSJBB
 cvDRKN7YEhvaSQ0Zs6zuZECK8oe8lrTdAcN0RgJ8K3P86zloRehBUw2XAbPWvHVPYgFE
 vg5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=etSf4B+EensBg61z3vriU5Um0L1QiBpVSWuAqrdE2/U=;
 b=JnSqNgqUAdEssrh1oZFUgJv31wGYnnjt4vYW9LI2y18GZkw+T7vBbRSySbLqO4d5gl
 Eo6qa3Ql6zu+h20KEcP4NG3V1VamfHrq+zPtmSKk8SXRfZ1+gqbI3CsiBaCO37qIKO12
 PHtOCQdFga3I8BIwJyx0dzJouxpOaNjUIxEKA7GcbL+dRHkcif0Els7N/fV1yUQC6ObC
 hGGvPwzdLu3iC9pVnqO4Y0xETSI1ct6BKg8Xze6ds4q2Zym8P+iZ64UPi42kWCnuiMAT
 gQr0E4Xo/oMfgtbDwX6FYRjD1s/MRwrYRgwkZ0IAM0LILKFqfRediD8edfgAjQttKu+z
 /Y+g==
X-Gm-Message-State: APjAAAXQ5niIEnyL+QJd0/HyShRsX02boLidfwF1HrTipxAOfwT4RFC+
 KU9h9uwt6I3axdyXWcSDlVW/czpzVhNT+bKhk6rzZQ==
X-Google-Smtp-Source: APXvYqwub+mpPiLYnwCae0Fe0SXyWet8+WfAkBCLua5YEmqOGz/7Vkh50hMcx/EgIuSfn7Qp77PKUsULuQkI9BA2YCo=
X-Received: by 2002:aca:2210:: with SMTP id b16mr2373763oic.32.1580900882316; 
 Wed, 05 Feb 2020 03:08:02 -0800 (PST)
MIME-Version: 1.0
References: <20200204111947.52013-1-zong.li@sifive.com>
 <CAAhSdy2OAwtHfzQAz62a5ChkPL7WTaaNAYKjfKQGDqo+hUse3A@mail.gmail.com>
In-Reply-To: <CAAhSdy2OAwtHfzQAz62a5ChkPL7WTaaNAYKjfKQGDqo+hUse3A@mail.gmail.com>
From: Zong Li <zong.li@sifive.com>
Date: Wed, 5 Feb 2020 19:07:52 +0800
Message-ID: <CANXhq0pbm0pgsOLdFSJvTjpd8e7-6-pCRSvFM-+H6oY3aYeiPg@mail.gmail.com>
Subject: Re: [PATCH] riscv: force hart_lottery to put in .sdata section
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_030803_519630_D78F7C42 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Feb 4, 2020 at 7:40 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Tue, Feb 4, 2020 at 4:49 PM Zong Li <zong.li@sifive.com> wrote:
> >
> > In PIC code model, the zero initialized data always be put in .bss
> > section, so when building kernel as PIE, the hart_lottery won't present
> > in small data section, and it causes more than one harts to get the
> > lottery, because the main hart clears the content of .bss section
> > immediately after it getting the lottery.
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >  arch/riscv/kernel/setup.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> > index 22b671dbbcf1..45c63dc06360 100644
> > --- a/arch/riscv/kernel/setup.c
> > +++ b/arch/riscv/kernel/setup.c
> > @@ -40,7 +40,7 @@ struct screen_info screen_info = {
> >  #endif
> >
> >  /* The lucky hart to first increment this variable will boot the other cores */
> > -atomic_t hart_lottery;
> > +atomic_t hart_lottery __section(.sdata);
> >  unsigned long boot_cpu_hartid;
> >
> >  void __init parse_dtb(void)
> > --
> > 2.25.0
> >
> >
>
> Looks good to me. Please ensure that it is tested with both
> RV32 and RV64.
>

I had tested it on RV32 and RV64, it works on both.

> Reviewed-by: Anup Patel <anup@brainfault.org>
>
> Regards,
> Anup

