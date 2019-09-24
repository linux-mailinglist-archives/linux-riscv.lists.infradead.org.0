Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7B9BC13A
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Sep 2019 07:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpSHKhhJD2PxJrthg3RBqB7nzFTGII/rQJB1q9ZelMI=; b=hNOA9oHwlynSIm
	vOizBd6UCADdUxUqsztA3EiGhFWEWemK5fVkaK36lW+CPo28zUr0UK8QaR+fXSVxDuFU4+4Aeaa0/
	FZBypVtDltIlUJCTQR5aju2op2egnDdOdE99z84F5OtqeRZOMcgKmgc2vL8+JHXGFQGNB+JsRhqcz
	Se17nkZPQWRhwf559cLSZGQnXVmhKtkZl4PhBaiQRnE0yaY+nPkK4HKE4En6BkUAIOBXqLIVyzA06
	CS7pd/0lS2nduiM8e8zHtrQ86cUn6KXYEc9R12s0SQBLUhF5+/8sZEUQ2cccYnr00z87Mvzakssk6
	ePDpG3VRzXRqyt5KeBTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCd3T-0005oZ-6b; Tue, 24 Sep 2019 05:08:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCd3Q-0005nh-3m
 for linux-riscv@lists.infradead.org; Tue, 24 Sep 2019 05:08:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id b9so349308wrs.0
 for <linux-riscv@lists.infradead.org>; Mon, 23 Sep 2019 22:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2d47E32C9RUOC5wWI8ATuz+LPjAEghSrUhg7r5IgcGw=;
 b=xk0WaUyL1bcfquknkF16bbwNOlHNKes+nkQlDlLr2dbIuiGGKwWswlpRW/npj90Pbp
 z/MrEp/lBndbQrNq4ws8M1Js64R6OavvHdhzyDhYlGYMQIuFSZ031gDiODKzkZJUykM8
 Oa4zpJXbWUqNf0m7Rfr65UFEO9v0GA4CtOfdmhfn3hal9uv3KrdOEJZ6EdTJlyc5ksZD
 skdeBU7z+mE14MU6hxrVOoI1DonRXai40vjdsmQUsNwmmN12Sm9D5CE5EbNoe9QUb5eJ
 dehyr2pMmM+b3jY5L+j2gihyQn5h2oJzty8UFT8PW2+chfCN9Q9V2sFZUPg+LOTY34Zz
 RwTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2d47E32C9RUOC5wWI8ATuz+LPjAEghSrUhg7r5IgcGw=;
 b=dLm0iAINJVxGZRJnso4yV6xwClkyYkMvKYqoC5ooyRWhUN3PLkS4ojgYZJohhw4IX9
 FJxeaBnUvWT6qIoclTdmZwAgJfpYnnFdHl7aFqvVy/ynXQDf5UdCyTqsVFJ6cqMCafYz
 kbf8JFkVN/GjpGBpktGSIxbDP42U8/trYpaQQBSH1gvqvgntJNBkx+eu2gM2HywxHUdG
 5NjiNtKlmi8r1Sq7u0OuUb3o+CtbGtanIC5UrtivdsoecZmizJ6KYZdqEQK8pBJNt9T6
 e7xJtIRZWLNYIbf6IAgJN2Fc5JYySiG/dPyzUesrSezsk5bYGCFrb61u1NrTt37XyuQr
 sLfQ==
X-Gm-Message-State: APjAAAWh69GsT4U+Ke1OxpBG/PW2XLpQfLly1jXj/5kaepSQGxOwm5V4
 47zNHqvuJKvktSpE2o4tni6IQFuBbG+yGp+aP54IhA==
X-Google-Smtp-Source: APXvYqwkgvLZ1ao9vw+cuFq1o7BDXNlJZMaWP1xTU3OzBpsnv6FrdOOWOJg+vki1pWF9gE3sE5XfxFfMzY+7t0S+mXc=
X-Received: by 2002:adf:f1d1:: with SMTP id z17mr634403wro.330.1569301674793; 
 Mon, 23 Sep 2019 22:07:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-12-anup.patel@wdc.com>
 <8c44ac8a-3fdc-b9dd-1815-06e86cb73047@redhat.com>
 <CAAhSdy1-1yxMnjzppmUBxtSOAuwWaPtNZwW+QH1O7LAnEVP8pg@mail.gmail.com>
 <45fc3ee5-0f68-4e94-cfb3-0727ca52628f@redhat.com>
In-Reply-To: <45fc3ee5-0f68-4e94-cfb3-0727ca52628f@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 24 Sep 2019 10:37:43 +0530
Message-ID: <CAAhSdy29gi2d9c9tumtO68QbB=_+yUYp+ikN3dQ-wa2e-Lesfw@mail.gmail.com>
Subject: Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_220800_159866_E0D30F0D 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 7:03 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 23/09/19 15:09, Anup Patel wrote:
> >>> +#ifndef CONFIG_RISCV_ISA_C
> >>> +                     "li %[tilen], 4\n"
> >>> +#else
> >>> +                     "li %[tilen], 2\n"
> >>> +#endif
> >>
> >> Can you use an assembler directive to force using a non-compressed
> >> format for ld and lw?  This would get rid of tilen, which is costing 6
> >> bytes (if I did the RVC math right) in order to save two. :)
> >
> > I tried looking for it but could not find any assembler directive
> > to selectively turn-off instruction compression.
>
> ".option norvc"?

Thanks for the hint. I will try ".option norvc"

Regards,
Anup

>
> Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
