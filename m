Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC6A84322
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 06:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRNgYehMnCCVqOF0BZjbBMbM54yoaLtS9THSQ2P2xrI=; b=VJjUKL34InnzHj
	Rv8SY2lzAImG2d+wOwnqHSL1/M89LaOSIk0IIlfej/YrkzrysKAI54tHaEGRdy/cOPHEdkXx/Ukx0
	8hzqDDzb1AhcMy0HmQGngxS1ucQHuRC0MxEQfy2TCmFHUgv/WCLkFd/UhwYmS8vhf7HyAnPWyrneR
	5yv6TTuzj941m/i1VW4Ms4NgwJcbsNh9DRGBx7xweUbzyWbU5DglzsD5wrp8OUigIOaVMohxTlnC/
	gC7RA/hA0YDSatmeSKK9JlnuemOiQIm6AuqjkWK55RJ5VPFIs6k7D04Aco2xvYeZmUS3cVCuCZxgv
	VLlNQhqjEKHW2BURB0eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvDJf-0008Fq-8a; Wed, 07 Aug 2019 04:12:47 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvDJb-0008FX-5j
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 04:12:44 +0000
Received: by mail-wm1-x344.google.com with SMTP id p74so80251462wme.4
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 21:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g4Mto+u+o/GrqhpuJO5sk5R5bWRkMiGx0GZ7PDoZHhY=;
 b=hGk8PdnRxQzAhPWjp8Solk8ESY/KLU+gAfVMhPUcVLaljCWzEf6pRIB+ykme9AcMV8
 uAMtTV6f+Mx5YHksBZHynRnf2uhdVUemjoj0uxOcmrrY1JIbbFbS0TII60Mk2X1s8Jl/
 cMMx5rySLkA8gG789t5MzOsrqa0w7yTB0pEEEBDxkaLeh3zBd+1GZU9sY+yiinrg0DAe
 hyS7LzVjCYue1rlQI0GA7Df+jRhMw0TfOfQbKfP7IGeSYpyIcPYtpCe5rpAeLJf0KAdC
 Qkxv/hMazv3lm9Tbb+XMXF7EmbBgGFSUwcCFwyhL0rLnN8CnZlKlQXh1r8Ge2wr45zvb
 P1zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g4Mto+u+o/GrqhpuJO5sk5R5bWRkMiGx0GZ7PDoZHhY=;
 b=pBOwaNz2bWkP/FNpLkdPGSpSffMU276GDmFlWs4BnY3yg+9SEci4pVBSNv5R5Z4PCG
 0qMO/F5cJLz3ET368PAljyFaGkd2MtihDh8gnbD91wn/jq0BVQesBP4eWhbYhaCSe+q5
 64q3W17RjqiIa0qN//CG38ejVsq8H4RztCddGydUE2PMY+kIhdLzOjDEfepUkhurca2e
 ZNW4r4sjmiqDRghlguHZ2QrIMYMvxwGmrpf0zcI/oacxdzOXI6K711duPnUYSNbVTQ1g
 0cqrjcRisIlwvmOzl8bXzFoWwHvbZ8fUGxXlSe509Y6M8rT91cpJww1i5v83Ss+6VPar
 MKmA==
X-Gm-Message-State: APjAAAXiUsY7FTByRROq8ZFeDrVTDUm09FXSX+Dlg/UE+5ivAtr+3RdL
 hAb+C0asI0KyHbPNn/y5APkhTE0xAEP9BOMYjjkASQ==
X-Google-Smtp-Source: APXvYqxNQXi0Vk0popN48576tfFY9XromzfT2N02IGLgqdhJFMVPw6vXQpznv3nKE3ce9kACVusM9LL3MVE7mwSI0Mg=
X-Received: by 2002:a1c:9d53:: with SMTP id g80mr7920551wme.103.1565151161058; 
 Tue, 06 Aug 2019 21:12:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190803042723.7163-1-atish.patra@wdc.com>
 <20190803042723.7163-3-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1908061452570.13971@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908061452570.13971@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 7 Aug 2019 09:42:29 +0530
Message-ID: <CAAhSdy3tJ3RbnyOtKAT4zsjPUxMQkm+UtWa4sTTZxSAsYUBs5g@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] RISC-V: Add riscv_isa reprensenting ISA features
 common across CPUs
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_211243_279056_D2F7986B 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Anup Patel <anup.patel@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 3:24 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Hi Anup, Atish,
>
> On Fri, 2 Aug 2019, Atish Patra wrote:
>
> > From: Anup Patel <anup.patel@wdc.com>
> >
> > This patch adds riscv_isa integer to represent ISA features common
> > across all CPUs. The riscv_isa is not same as elf_hwcap because
> > elf_hwcap will only have ISA features relevant for user-space apps
> > whereas riscv_isa will have ISA features relevant to both kernel
> > and user-space apps.
> >
> > One of the use case is KVM hypervisor where riscv_isa will be used
> > to do following operations:
> >
> > 1. Check whether hypervisor extension is available
> > 2. Find ISA features that need to be virtualized (e.g. floating
> >    point support, vector extension, etc.)
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
>
> Do you have any opinions on how this patch might change for the Z-prefix
> extensions?  This bitfield approach probably won't scale, and with the
> EXPORT_SYMBOL(), it might be worth trying to put together a approach that
> would work over the long term?

Our plan is to use bitmap instead of bitfield and all Zxyz extensions will be
assigned bit positions "27 + i" where "i" will be based on order in-which they
are defined in RISC-V spec. In general, "i" is just a unique relative index
(starting from 0).

To summarize, the existing bitfield approach can be naturally extended
using bitmap.

We will update this patch accordingly.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
