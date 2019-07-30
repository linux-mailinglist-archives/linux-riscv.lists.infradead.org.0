Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF617A7BB
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 14:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0uQZUONjMB8AXFlURc5b5I40qfrA4CZN9zRJZfOqd4=; b=timmVGJpm8CCEf
	BPsUhJiuCoVZe+/POJrNN2PIVf9Fzr1xZ/ZGsBAprcU2CLFcpY9Bh3ztuOQknHIYtHGg1CXUD+OlW
	sGEm6XCpBr+plsft8Rsbwucpx3JvRvvDmV+E+qlGfc0pt5RPmyh6+MDirqot3S/PYK7/MK5SNYkGy
	ReqhMHai3CgMVMH2WKXj0UfBqg904eDCNzOZy4OarnejWiIiyw2N8KXdLCTnrjVWwZg6SjWsHzvOh
	TV/m/WxhXLn/yp77Xlurt1G+Q7Xv5NrODPB2PqIbdKC7tIhkdo4YG+Tn631Krjap5Y0stnLRHZaqC
	3/4k3ISOMPB2N6N4Whmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQwF-0001z3-Jh; Tue, 30 Jul 2019 12:09:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQwD-0001yi-5Z
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 12:09:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id f9so65477638wre.12
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 05:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NEXRKVgiAewSzMHKuc4kYp85srZxayAyjwnb+cltz/A=;
 b=hk/KqKIGVmzsttbZR/gwF2OK0U4nrpMkMwgRfr4Suo1MJW2IsOPukKgv1lmqoSVUg0
 NBSR/3ku96WkmFUeRHx/6fqdNY7BtJP9EegEJVfs9eQkmvAITRarqhgmAJhPrrrTFwtK
 /NYeHp4JADVMdK6Z5mZH+maD5ERJmoTMxpKWubgggtX482hx5c1a8qUXN4ztkebaAXg5
 5CnI4ELBh+DDI08aHsI6B3hNBiuGKudfjO10f7xXoGTtPSHG3Hvq87Qao7/eUZESPJ9k
 UcWs5FBuqtax0X+W+DgUz2Xdw9l11bk1qBXgPXxW+q0MIdDYe4uoZ9W2FPiCToTeK7v1
 yeIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NEXRKVgiAewSzMHKuc4kYp85srZxayAyjwnb+cltz/A=;
 b=hAWHeDLTUlqapLkI4AfX07KAmb8jBesMzFEvKoRt05Lu34mBwJuBDTzbDyOm89f9n3
 GOW0FjWKGoGC22I6v0kADa6SXXNUwGZjzCy2itaq4z9xG0cZ8m5x+yeIB0mkChG+pbZx
 c5sNVbzKPa0843R6cFVOUJHx2j0iP/Ce5O05rgQt9x5UdVG+C6rxM191tctcVDMRVTkM
 5F6UM66GY835UGepNq5YG0T1+912UvhlHr4oqlewtDbnmV2Wusik9hF3SFojNuyYkxAn
 Fza+LCLwL3M2ud5jbOi/FiR9n60uQwm8kRUSQnwDxGDWXi7REgX358VXnunUd3e2sbEo
 d+ww==
X-Gm-Message-State: APjAAAW2wj+GlOj9WDEmJDBmJkEKjwmMEdk8bKPk5GcgeD5PvAKslCLj
 zPUuK4AZL9JRgvDsAsWdAtB/SZj6gSiWWNi/+cljLii5Oag=
X-Google-Smtp-Source: APXvYqy9j4zSHu4dp1+U/CdhnB7i3Hnbv00SVhZJbG6jzJT/h0YFIWOh4Y833SEXLrNLULQLDFdnZOtStWSu9W/tgKA=
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr50422046wrw.323.1564488543296; 
 Tue, 30 Jul 2019 05:09:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-7-anup.patel@wdc.com>
 <3caa5b31-f5ed-98cd-2bdf-88d8cb837919@redhat.com>
 <536673cd-3b84-4e56-6042-de73a536653f@redhat.com>
In-Reply-To: <536673cd-3b84-4e56-6042-de73a536653f@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 30 Jul 2019 17:38:51 +0530
Message-ID: <CAAhSdy2jo6N4c9-_-hj=81mXjHjP8mvZy_8jOdRZELCyU9Y8Aw@mail.gmail.com>
Subject: Re: [RFC PATCH 06/16] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_050905_264598_E1F4F43C 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 3:05 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 30/07/19 10:43, Paolo Bonzini wrote:
> > On 29/07/19 13:56, Anup Patel wrote:
> >> The PC register represents program counter whereas the MODE
> >> register represent VCPU privilege mode (i.e. S/U-mode).
> >>
> > Is there any reason to include this pseudo-register instead of allowing
> > SSTATUS access directly in this patch (and perhaps also SEPC)?
>
> Nevermind, I was confused - the current MODE is indeed not accessible as
> a "real" CSR in RISC-V.

Yes, you got it right.

>
> Still, I would prefer all the VS CSRs to be accessible via the get/set
> reg ioctls.

We had implemented VS CSRs access to user-space but then we
removed it to keep this series simple and easy to review. We thought
of adding it later when we deal with Guest/VM migration.

Do you want it to be added as part of this series ?

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
