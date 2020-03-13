Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB171840A5
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 06:40:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K7EphsVzdlmIzVb1Wxrfv1iNj50eXdNaRaOrRUQT92s=; b=MNPPW/aFDz/ToHQssMkMcijiK
	9TM0E3b7n+aTGXuKPNABGcl6rljY2JvMrPGAy/ytxji/T1yzrSYEQXakAcUXHrFlakCVMJoZPrhzL
	2K2l6o1j8v1Mnd1tRglpR2m8gCz9m8DBetZwcs+EC+YN37NV+ALLJ+Y32FU9lDz4MgAAxvx7DkJRX
	W8SVygJlm8bbOkoKCyDee3uK3JwBxAmC7AEMiM+++fk3d5rR0kzV+FChEve6mUeKYfvIStWXTKwDh
	oFjfah1NjriHD0yDUPkYEwiwqSV8f1jbzxMZYK84tkjtLJn5lN0a3ApevcktlfPQEbcY5rj2kA/AM
	7N3LIEqag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCd3l-0001qL-QW; Fri, 13 Mar 2020 05:40:37 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCd3h-0001pC-Hu
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 05:40:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id t13so2566046wmi.3
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 22:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K7EphsVzdlmIzVb1Wxrfv1iNj50eXdNaRaOrRUQT92s=;
 b=MRDypOy61L9F/XFa7aKQyXacfLa3a4rsN8ox7C3ZvmnIJwdqzN2bEqWxwc6I5PnbkM
 7PhNev53PiuwjThpobeJo32y84IAIZ3bLmJiX2SJVOCqfnr7TpZl9Rm9aruLHQdtIB13
 /l3Qfyun+XCJkBfLGRYU4IlwMS5Ix+YLecunAwQKW+a7SVx0Nyy3pY2yb40KmakeFmBJ
 7AhPSKhYXFDgGxy+trt5nQYlBvPeVVYNnBI3hpqIYls0lszdUbmFknCcDZL+5kDySHNA
 08IEvcWCuUXQR8e7yWmUSIfPxoCc4hTKtHSNlyG6eEKUUW2d3Xbv2pcJxjK199xfepcC
 AdNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K7EphsVzdlmIzVb1Wxrfv1iNj50eXdNaRaOrRUQT92s=;
 b=Cm9PkVS7U7sxhlOzXIh71aE7Lat//yAKs8k4qkzxlecbij23JP/UvJ90BO6ptezTGC
 5siKcxnpdIw2psZ7HdRQmRZC56F0GdZsufbb4mSvlYxteCr/dlQ0M4Gay0M+m/gF6Nqx
 WtVzeAPlPct6K0F7Q9IZV/qJvK74xtomfg8paL8XRI9wK9sFyOklBGse1E+Wy1CnLMzf
 utDVlH/mCkwps55TWVLCleiEa9gc1t6KZEFEuGAKdGC3ByorjEtq7zIPWqRCyWPmusCT
 868BLnc4EYL2EdNSl7LbU+e1xShBE5WGbDRDCQti8vfWTd0M7NxV7ECDDObYtF6BsvjM
 YgHw==
X-Gm-Message-State: ANhLgQ2Q1aPF+jDLUC69JqsgK1p2Ld2PdqfktbixB5UIClGbn24GIKDz
 6BEK3YlZyzRo+zQ0xm8zSuq8Qrdts1Okqu6IaRUfQw==
X-Google-Smtp-Source: ADFU+vv8Tjl4WmAA7h6U7CNi9j1PrBWEBCr1iX1HogrQSIOtP8foEgEiy67wjtlMq9lCteMGsK/a8DTQwzlRax8P9dw=
X-Received: by 2002:a1c:5452:: with SMTP id p18mr9011050wmi.102.1584078027485; 
 Thu, 12 Mar 2020 22:40:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-10-damien.lemoal@wdc.com>
 <47a2207d-6c16-b007-4c35-7c1a0649ecc0@gmail.com>
 <CAOnJCUJjLB2fwW+ZAKc9nixUeJJm7pg8KxuOkqF5pvY1c0nRsw@mail.gmail.com>
 <3e2ae3be-6269-acbd-6283-16c50cd119af@gmail.com>
 <CAOnJCUK15kiMohMoqfPUNE43Yq+BTW=kY4AHYjyKkdr9Htg-ug@mail.gmail.com>
 <e7835ca3-0754-8143-33cd-bac97878a0ad@gmail.com>
In-Reply-To: <e7835ca3-0754-8143-33cd-bac97878a0ad@gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 13 Mar 2020 11:10:15 +0530
Message-ID: <CAAhSdy3ZaUpmiB3uS13uaXTq7P-9C51J_2QYYS-y_O9LmF8VYg@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
To: Sean Anderson <seanga2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_224033_741227_374CBC58 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Palmer Dabbelt <palmer@dabbelt.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 Atish Patra <atishp@atishpatra.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 12:19 AM Sean Anderson <seanga2@gmail.com> wrote:
>
> On 3/12/20 2:29 PM, Atish Patra wrote:
> > On Thu, Mar 12, 2020 at 11:14 AM Sean Anderson <seanga2@gmail.com> wrote:
> >>
> >>
> >>> I don't think supporting old specs in Linux is a good idea. As per the
> >>> patch guideline
> >>> for RISC-V Linux, patches for only "frozen" or "ratified"
> >>> specifications are allowed.
> >>>
> >>
> >> Well this CPU follows the v1.9 spec. It's real hardware, if it is to be
> >> be supported, then the 1.9 spec needs to be as well.
> >>
> >
> > As RISC-V is an open ISA and it's continuously evolving, there will be
> > some hardware
> > that will implement old specifications or non-backward compatible features.
> > I fear the number of hardware with such features/implementations will
> > grow in the future.
> > If Linux is going to support all of them, it may be a maintenance nightmare.
>
> I agree. There is also no standard way to communicate the implemented
> privileged spec level e.g. in the device tree. The base integer
> instruction set version can be specified in the riscv,isa property, such
> as
>
> riscv,isa = "rv64i2p1..."
>
> However, there is no "extension" for the privileged specification.
> A method to specify this would be helpful, especially since the
> bootloader may need to enable the MMU before loading Linux since there
> is no way to enable it from S-mode until v1.10.
>
> On the other hand, there is relatively little changed from v1.9 to the
> current revision. The following list has the differences from the
> current spec:
>
> * The PMP has flipped polarity
> * The mcounteren CSRs are split
> * sfence.vma is sfence.vm (though this should be handled by the sbi
>   anyway)
> * satp has a different name, and mode no longer exists in the top four
>   bits. Since these bits used to be part of ASID, it's fine to write the
>   mode to those bits. If linux never switches from (e.g.) sv39 to
>   something else, there will be no observed difference either.
>
> Everything else is mostly forwards-compatible, as far as I can tell.
> That is, assuming new behaviour on old hardware won't cause problems.
>
> A sufficiently smart kernel could even detect the version at runtime by
> intentionally triggering behaviour which is illegal depending on the
> privileged version, and then checking for an exception.

As-per Linux RISC-V patch acceptance policy, patches for "Frozen" or
"Ratified" spec will only be accepted. The KVM RISC-V and Vector
support patches are on-hold for same reason.
(Refer, Documentation/riscv/patch-acceptance.rst)

The amount of change is not the question here it more about policy.

Linux RISC-V NOMMU kernel has carefully avoided this policy issues
by only touching CSRs in a way which is compliant with the latest "Ratified"
v1.11 spec.

Regards,
Anup

