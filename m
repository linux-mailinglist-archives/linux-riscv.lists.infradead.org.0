Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FA61E9C64
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 06:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SDxsJqQtiN6qT4srwSvggU8FGCrRE9qkazQvrNm8wfM=; b=iy1WCvsTXumYb9veEQ73jKau2
	/MAHkB91ReuSV7M/m0r3SifLovpUcqvH0GQD7zVIf8ZAXLXVXCbEuz/zxoZd0lBkiVWrlEVU5e2HG
	3mMpIyw0W45vnQ9sUgrpNbGtonvd5NOwPSkT6iITX0wwRHdsNXS89UO5iQJ0T4AGnEvv0cNIldLU6
	Xld4iHYX9mjrtGZE3LMEgjtskCYXSm4F3I7o/4xzkWsu15I+VnQkdCeDjCIk84dsZa9NsDeyp3IDR
	C0DB45Zx17t+mH/VY0PIRacbugXE9M2v/E6mUNN3y/Vp/PgS2hqH8Cy3uQ6EMNJcJDUflFMo9T+QR
	dQ5kPzlrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfblV-0000w6-6P; Mon, 01 Jun 2020 04:09:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfblR-0000v1-IG
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 04:09:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id f185so9923644wmf.3
 for <linux-riscv@lists.infradead.org>; Sun, 31 May 2020 21:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SDxsJqQtiN6qT4srwSvggU8FGCrRE9qkazQvrNm8wfM=;
 b=jknxIcNH2XQSSNADSiNUBSHeS3PF+O5g3LD87ZKg1H6TlAD0JXRYtW2TIbDZqzNFpl
 z6R9GNVtRO8obFFLI8YZNz9iQBPShTZdmMTBkeKi8wErxfL1rFeTK6rCGt7DhNGqYHWZ
 K8D4mxYOArJ+C6694FYqzOJ23r+YtXWb/ITfatn3AE/oPSaGqtPlAHUGdGfc8WB7jp9B
 Ba/+tIsl3cO4H33h1KG1vttcpU8w6Xu0oceZgFC9NIq7epa5eGptSZopF0bCf/ID31d+
 +EzNXTS8MKYwnqPTZyG4Vnv+mr/91XjcdDg05caxGY2oF4NkShgxazFeL12UCwMUtP45
 pzYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SDxsJqQtiN6qT4srwSvggU8FGCrRE9qkazQvrNm8wfM=;
 b=VMw+6kiDnNl/FsoTF5Hp5cgW8XAcXNaC4d1gMI7Y3pLJJ9LrF+TScMzfgb/oPCWTnw
 71MqlCDfFgnD1D9bif+EaALrB0GFeaMO9MpDlTWT0GFpzl9FF8EyW7SpVfqA/ObsMYWg
 sPfa5SctjkaqrGtpwhnEJADRmVVptkekBFCAWwkyGevaIR1Ik6itJaq36Bx9MHAXeZNL
 TOaxKGPZWP+vsevvY8ZOsOdF9Wj98A31ewq5aZSlSJFywN57+0KIMBOpqML+sJGSL7T4
 03VXMXt1Nf5Vkv8o4LoCRhhNLzXP/uKxPCmvII0jKP7FR36Oq+WFGwAjiIO3F6QXHuOe
 IQ+Q==
X-Gm-Message-State: AOAM532is5rCS7h/5dUN9BkZqcwPpGgc7AUGFkX9xUJ9Js9IH1SWJ6xR
 I51Ho9ZobxxDX5U9A91dqD3+hE+fKiv+CyXHO+TfZg==
X-Google-Smtp-Source: ABdhPJwFi1WjShumSoZd1c/C4iYCIO++7+TAGxRepfLWm6PBEo326+hgrkZrJTnSo2VN3fBbDvZ+FLBOqWEusZ/sClo=
X-Received: by 2002:a1c:a3c5:: with SMTP id m188mr8931300wme.152.1590984568220; 
 Sun, 31 May 2020 21:09:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200530100725.265481-1-anup.patel@wdc.com>
 <20200530100725.265481-4-anup.patel@wdc.com>
 <cd4a5513197b73e3b8d335f09117bb8d@kernel.org>
 <CAAhSdy3cnZwnjpqWkixmZ5-fi=GK1cSUsjah=P3Yp5hjv382hg@mail.gmail.com>
 <a5f1346544aec6e6da69836b7a6e0a6e@kernel.org>
 <CAAhSdy2fJ1cd2OjAWODOmSbkWUBfvvr4rvsTqh4qNxZjTTKo5A@mail.gmail.com>
 <e315f76b06b7b0935ebee867c04f364e@kernel.org>
In-Reply-To: <e315f76b06b7b0935ebee867c04f364e@kernel.org>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 1 Jun 2020 09:39:16 +0530
Message-ID: <CAAhSdy3-dr1URn1mGu3n9D-h+wjsU18nbWPYMRNAtitMa58rwA@mail.gmail.com>
Subject: Re: [PATCH v6 3/6] irqchip: RISC-V per-HART local interrupt
 controller driver
To: Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_210929_673823_70BA7515 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Anup Patel <anup.patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, May 31, 2020 at 4:23 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-05-31 11:06, Anup Patel wrote:
> > On Sun, May 31, 2020 at 3:03 PM Marc Zyngier <maz@kernel.org> wrote:
> >>
> >> On 2020-05-31 06:36, Anup Patel wrote:
> >> > On Sat, May 30, 2020 at 5:31 PM Marc Zyngier <maz@kernel.org> wrote:
> >>
> >> [...]
> >>
> >> >> >       plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
> >> >>
> >> >> Why do you need to both disable the interrupt *and* change the
> >> >> priority
> >> >> threshold? It seems to be that one of them should be enough, but my
> >> >> kno9wledge of the PLIC is limited. In any case, this would deserve a
> >> >> comment.
> >> >
> >> > Okay, I will test and remove "disable the interrupt" part from
> >> > plic_dying_cpu().
> >>
> >> Be careful, as interrupt enabling/disabling is refcounted in order
> >> to allow nesting. If you only enable on CPU_ON and not disable
> >> on CPU_OFF, you will end-up with a depth that only increases,
> >> up to the point where you hit the roof (it will take a while though).
> >>
> >> I would keep the enable/disable as is, and drop the priority
> >> setting from the CPU_OFF path.
> >
> > The PLIC threshold is like GICv2 CPU interface enable/disable.
>
> Looking at the documentation[1], that's not really a correct analogy:
>
> - The PLIC is far removed from the CPU, and is more akin a GICv3
>    distributor. The INTC itself is more like a GICv3 redistributor,
>    as it deals with local interrupts only. I don't see anything
>    in the RISC-V architecture that actually behaves like a GIC
>    CPU interface (not necessarily a bad thing...).
>
> - The threshold register is not an ON/OFF, but a priority mask,
>    similar to the GIC PMR (except that the PMR lives in the CPU
>    interface and affects all interrupts targetting this CPU while
>    this only seem to affect PLIC interrupts and not the INTC interrupts).
>    You may be using it as an ON/OFF for now as you don't support
>    multiple priorities yet, but that's just a SW thing.

Yes, your analogy is correct.

BTW, PLIC does not handle MSI and does not have virtualization support
pass-through interrupts. We will most likely see a new RISC-V interrupt
controller spec for these capabilities.

Also, the PLIC spec is now owned by RISC-V foundation (not SiFive) so
we will have to rename the driver to "irq-riscv-plic" and will have a new
generic compatible string "riscv,plic-1.0.0". One of us (me or Palmer) will
send separate patches for this renaming. I hope you will be fine with this??
(Refer, https://github.com/riscv/riscv-plic-spec)

>
> > Based on your comment, we should only program the PLIC threshold
> > in CPU_ON and don't touch the PLIC threshold in CPU_OFF. Right??
>
> This seems like the correct thing to do.

Sure, I will update.

>
>          M.
>
> [1]
> https://sifive.cdn.prismic.io/sifive%2Fdc4980ff-17db-448b-b521-4c7ab26b7488_sifive+u54-mc+manual+v19.08.pdf
> --
> Jazz is not dead. It just smells funny...

Regards,
Anup

