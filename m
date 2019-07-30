Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3E47AA24
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 15:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MvI7mj83vSTrwx3KfIIEX8NVhiSf8TbKMgIw/4oak4=; b=drUwbgETJWlFF6
	hKGFWfocO5K+GzbZvUp7k/kugxq2x5fQiQhk1WNucxFYvrAL1xpRExA+kxSeiV/s40psRVyorZkxM
	8PTD3y27AyueDSvu+WAMzw04mbkCpZupGt0jtNxIbMGkHkPPh2lK73t4PpDIY9mUBcjy2JpbE1hFv
	uym+LgI8s4futtA+CDY6AqAqSH5+R+GmqVBqB58AvpaGi0KiwV4iS3lwPnPtJddnYs7JXlWXwc8On
	vZbCyaYCfBTdQftoAkzzoPFSIwGjGEY9Ety+FzksXvcrhSahJ4b63Ai9tmzxsSVol7YOM+BnK5u1x
	o44gbUl5Wn3pKgs3UIJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsSWP-0007Md-58; Tue, 30 Jul 2019 13:50:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsSWM-0007Lm-H3
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 13:50:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id f9so65848841wre.12
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 06:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X7iKvPV9LFHWqoOOGTIb4owz/JIo887EqlnJgr1d4nw=;
 b=0GHJfGDW2+1fTzradLIxRNe68wCgVz7Su5dFoY1O20icu9FNPAkVtC6+y4atcRMxME
 LcAnnmyGc8smLgt4iLpxEspPujnp8HMheOwuMHP0pAMcloddLv1fs/DRKKFhRC2ac+Ne
 VW8ZbKiyM1GJPZezCkfglkHLjjVVNUQ8+LRo4iXCMgoKbb/f6yj1572GFFG1AzE+0QXF
 8S3O8nLPsanoO2A4C3oQBXFbiXfh5I7Wg5MAYYFo02lBtkJ+KR/UKV1UCkz9CUGqD5Kn
 x63CLAJYfZv61CF/+8VNBKxdFlwgE2WSAx/lyEkviTmfkW5V/lsduqB+wK24KIfF4388
 X5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X7iKvPV9LFHWqoOOGTIb4owz/JIo887EqlnJgr1d4nw=;
 b=PuKv+RI9MeqNT1FynkkYfiEZoqhe7QtJ4KMdJiAHX6J2KNa5kJ2pyw5XvHi5yS0RUR
 vAacidJuxFhmLUVSf5pY0NkgrM5K7TEu5kPjwsmEPAQMbVuc3fE5OctxZVINfyxwbj6D
 yMor4XkZXHhY3xuWXyYlxVfUhJJuJ57wV9GYTa1yKTv1PBS5fpw+05DTMx8wLb/aSsUw
 Vlp+lKhBpBhEjjM21UKmEF4f2dOPJv1OvZNO9oAeLn6em3iWvYJTX5nLPPSQsKCmFuFB
 AcPjDyT0r6fnVXSol8btM7KMLfXWjXY3yYZCVtAJoYWbO56VzYHqv+9+iL+2xJVvfdH/
 rCPQ==
X-Gm-Message-State: APjAAAVvTTuV/Oj2/1dhpFObcAap/JXYQYuFE+sWEf5XivTy7ceVbJZL
 eJbOxVJA4mRuAbTz8C258UL7zXZ3R6h9x07hb8s=
X-Google-Smtp-Source: APXvYqzRXwAqxGGy/gS1AN6Q4wfcCCsKG4LotfmFtE/HfO4p62K/RIkYnvqqEzbqc7z86kGIdpo2P3e9L0EefFqpksc=
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr50794346wrw.323.1564494627045; 
 Tue, 30 Jul 2019 06:50:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <72e9f668-f496-3fca-a1a8-a3c3122a3fd9@redhat.com>
 <CAAhSdy3Z6d2phRGo20eNWfa4onFwFtsOUPM+OCD465y0tvQ5wg@mail.gmail.com>
 <965cffdb-86e2-b422-9c23-345c7100fd88@redhat.com>
In-Reply-To: <965cffdb-86e2-b422-9c23-345c7100fd88@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 30 Jul 2019 19:20:15 +0530
Message-ID: <CAAhSdy0Sy9YV5ymdFk0URLY4GvOkWaWOpC_Dju+1ada_yc=Pmw@mail.gmail.com>
Subject: Re: [RFC PATCH 00/16] KVM RISC-V Support
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_065030_570871_8AE043CF 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

On Tue, Jul 30, 2019 at 5:03 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 30/07/19 07:26, Anup Patel wrote:
> > Here's a brief TODO list which we want to immediately work upon after this
> > series:
> > 1. Handle trap from unpriv access in SBI v0.1 emulation
> > 2. In-kernel PLIC emulation
> > 3. SBI v0.2 emulation in-kernel
> > 4. SBI v0.2 hart hotplug emulation in-kernel
> > 5. ..... and so on .....
> >
> > We will include above TODO list in v2 series cover letter as well.
>
> I guess I gave you a bunch of extra items in today's more thorough
> review. :)

Thanks, your review comments are very useful. We will address all
of them.

>
> BTW, since IPIs are handled in the SBI I wouldn't bother with in-kernel
> PLIC emulation unless you can demonstrate performance improvements (for
> example due to irqfd).  In fact, it may be more interesting to add

I thought VHOST requires irqfd and we would certainly endup providing
in-kernel PLIC emulation to support VHOST.

> plumbing for userspace handling of selected SBI calls (in addition to
> get/putchar, sbi_system_reset and sbi_hart_down look like good
> candidates in SBI v0.2).

The get/putchar SBI v0.1 calls won't be encouraged going forward because
we already have earlycon implmentation in-place and Guest kernel can directly
write to UART registers for earlyprints.

If we still wanted to implement get/putchar calls then we would need a RISC-V
specific exit reason in KVM. We have tried to avoid RISC-V specific IOCTLs
or exit reason in this series.

>
> > We were thinking to keep KVM RISC-V disabled by default (i.e. keep it
> > experimental) until we have validated it on some FPGA or real HW. For now,
> > users can explicitly enable it and play-around on QEMU emulation. I hope
> > this is fine with most people ?
>
> That's certainly okay with me.
>

Thanks,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
