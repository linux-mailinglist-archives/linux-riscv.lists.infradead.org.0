Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2524BD7AE
	for <lists+linux-riscv@lfdr.de>; Wed, 25 Sep 2019 07:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rw+3U2RCV9VzmdiGV1bo4C5rr9Ht82+bF3eAglhnyV4=; b=WLT3NByPpLAlRo
	adFXCydmwEUyQSWKIap9QRDua2wu8zcGpmir/50FY7DfpqKXDkiWfSUByCEZgs2MP9G0nN/bZd6qx
	8giFWNuopaQ5ll6KCDpuVLkoPtQG0In45rgnocK3s8dpjl7OzP5m5AnLaS0t3U54e97mTWvCclvno
	WKiCpHqhailDgRpJUtNPutyyz8NwWX7wKAgNk9ebFTmji67SNc8P+bpvDyDvSXoPC7EmFgnIEp99V
	OCTtfdbut9WWNe/5ZHA2ZXN8dARNaGU4YD7KavGAWgjJV4gNbiwzEGrRW0KvWi+qyvyPl44ewqZyB
	lY1Ofe9H4iatTGQCUFXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCzfs-0004Zy-27; Wed, 25 Sep 2019 05:17:12 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCzfo-0004Ym-1v
 for linux-riscv@lists.infradead.org; Wed, 25 Sep 2019 05:17:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id 3so2829304wmi.3
 for <linux-riscv@lists.infradead.org>; Tue, 24 Sep 2019 22:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MCKowqUakGbd2bzBHhBCQJ3eP070qYwr7iHSC1ow4hM=;
 b=h+uvIipMHwBJLDtSoQbxKC4Dfhcem9jIhZJCvILcnapKxMU0If6F8x4YMY5gRWdm5H
 f7bxHwrcZbBhNOz2aLK84mxYIRxJfAAGWdFZ6BZbpgFb+zkrjl3V0sHXWD0cqnoygcIR
 38vwQ2qqbI1Bctp+hmEWpOPipadn5GvOWgC/4T/IdwoB6JkCubwho5A3sovPFuND+u9C
 Z3hdivxj5r2bm6Xchi785L43kVrGOn3G1rUJcMsX2mRNmcO7HJB6ZnsLhFIp4eskN1dl
 dP+48XqMlWyGssuc+MKr7PAxIfotbQV4IcsIQBgEX47BcyO9F3ikA/hmu3rNR+ZsftzR
 2PWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MCKowqUakGbd2bzBHhBCQJ3eP070qYwr7iHSC1ow4hM=;
 b=e5slXcUt8NrcqDmseHy3DfV4TxsZavNnvRJVtMuFu+Zog6KCqV2fpBt68FRttsX6tk
 sW5rkuy9J+y6dFgSDqryVkfsod6Y6EjHQ4AZ/SW22MT6ONtTUcIBl2E1xwy0g/lfjv9w
 VESJQTIqIgxk+kzAGShcjplMf2QPVYKP6Y4k5hrRRlWl3+47pvh4Jl5a2W4/m58eUgDd
 M9lP7E8m1ffi6XxOpYOognrLdYhpkDRPZwJGMH01ZpehtJVDuCdtxKdBTQhDvs33zyZr
 PTlTBxSdbNKfETWMfr7m6PEbMsSuZydFQz7lthdu/J9lKa7XHIKjYbt+1uxqWkGU3dvm
 RqkA==
X-Gm-Message-State: APjAAAVELxEblEMetlXEH9aHq0LejmUt6FEEHyfJKO2ykou+g16LlGOK
 hGUVYoMFJuWruV2ySnT4ZlWdMwwUmVMc4hIC4rsBYg==
X-Google-Smtp-Source: APXvYqzhdUJMpM0GDlqgsIhYEXf0reKjaEVhO65SCeubaPWH1KDzfH89JQhOuWjayBOu2nPRonK1gHUlI6fgnWMuFv0=
X-Received: by 2002:a1c:80ca:: with SMTP id b193mr4789145wmd.171.1569388623980; 
 Tue, 24 Sep 2019 22:17:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190925042912.119553-1-anup.patel@wdc.com>
 <20190925042912.119553-2-anup.patel@wdc.com>
 <20190925044308.GA1245729@kroah.com>
 <CAAhSdy1Z09tpNtfS10gL5BXJ=1wydLy4nmtFyKQenAPDSyTLTQ@mail.gmail.com>
 <20190925050653.GA1337454@kroah.com>
In-Reply-To: <20190925050653.GA1337454@kroah.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 25 Sep 2019 10:46:52 +0530
Message-ID: <CAAhSdy3JyLyLF0FHdeXj2yZQO8wz=aAgjyg15x9ENeGxfgbp-A@mail.gmail.com>
Subject: Re: [PATCH 1/2] platform: goldfish: Allow goldfish virtual platform
 drivers for RISCV
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_221708_101348_AFA31543 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Roman Kiryanov <rkir@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 10:37 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Sep 25, 2019 at 10:30:00AM +0530, Anup Patel wrote:
> > On Wed, Sep 25, 2019 at 10:13 AM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Wed, Sep 25, 2019 at 04:30:03AM +0000, Anup Patel wrote:
> > > > We will be using some of the Goldfish virtual platform devices (such
> > > > as RTC) on QEMU RISC-V virt machine so this patch enables goldfish
> > > > kconfig option for RISC-V architecture.
> > > >
> > > > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > > > ---
> > > >  drivers/platform/goldfish/Kconfig | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/platform/goldfish/Kconfig b/drivers/platform/goldfish/Kconfig
> > > > index 77b35df3a801..0ba825030ffe 100644
> > > > --- a/drivers/platform/goldfish/Kconfig
> > > > +++ b/drivers/platform/goldfish/Kconfig
> > > > @@ -1,7 +1,7 @@
> > > >  # SPDX-License-Identifier: GPL-2.0-only
> > > >  menuconfig GOLDFISH
> > > >       bool "Platform support for Goldfish virtual devices"
> > > > -     depends on X86_32 || X86_64 || ARM || ARM64 || MIPS
> > > > +     depends on X86_32 || X86_64 || ARM || ARM64 || MIPS || RISCV
> > >
> > > Why does this depend on any of these?  Can't we just have:
> >
> > May be Goldfish drivers were compile tested/tried on these architectures only.
>
> True, but that does not mean a driver should only have a specific list
> of arches.  This should only be needed if you _know_ it doesn't work on
> a specific arch, not the other way around.

No problem, I will drop depends on various architectures line

>
> > > >       depends on HAS_IOMEM
> > >
> > > And that's it?
> >
> > I think it should be just "depends on HAS_IOMEM && HAS_DMA" just like
> > VirtIO MMIO. Agree ??
>
> No idea, but if that's what  is needed for building, then sure :)

The Goldfish framebuffer can do DMA access so I add dependency on
HAS_DMA.

Refer, https://android.googlesource.com/platform/external/qemu/+/master/docs/GOLDFISH-VIRTUAL-HARDWARE.TXT

I will send v2 as-per above.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
