Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EEEBD787
	for <lists+linux-riscv@lfdr.de>; Wed, 25 Sep 2019 07:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUPamDFM5LwKTjk9Zj1RjYJX2OoEF7/0mKfKkBRcHsc=; b=oncbjEXglVEbam
	w6IKwqGodiSPq/N24WzEunM0v2ZDlGY7RrGkjc0q8nMf2JlH/pp3guEEo612ozp/DjQRFx3Vfi6/P
	gkg4/U4BiTGU+ozrWONaUyVNGf44WHPZldoN8SRYJUzZQTViPhnFsFC2WWik8qEVe6vd08J8nfJOg
	VBBF/HAnM640jsm5R7GNXAlUt2pFwnnHEA5w1mvzzT+Uvqar80/im8KMdIBbtVo83UUfMNX7Ku5Qr
	sXBep9rCJxj1Pt4Ly3PhMYRUp8Uru1hM2ZVASb2s2qP3zPitMOjSKGzQn6v9ITruLUqcnOM9vznPq
	TwpuB0rb6B+Dffcn2qYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCzPY-0007iK-Bi; Wed, 25 Sep 2019 05:00:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCzPV-0007hW-BL
 for linux-riscv@lists.infradead.org; Wed, 25 Sep 2019 05:00:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id 7so3106562wme.1
 for <linux-riscv@lists.infradead.org>; Tue, 24 Sep 2019 22:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qCjUe0hDGDhMjnECf1F2ZQdV6LWs8J93Rkhj1cQXHGo=;
 b=E8oKqEdyG0bLy1YbJxVkgMWG5q1T851YJJLeEfwLZBcBzm/Z/rJFURALxIbiMzCeC6
 q4vrrUEPF7pfaObZleGRa4FaCj45G3Ud97aVzTOTTvst/+YIL/jQAVb+Ufw72IsVoVrO
 SDfYjZS5eKmEAeURuNg31P2jNvK3iguYv/xX2yw9wlsqE/Q9AAEaXDq3XkJw7typ0Sil
 KghJ4psNwURfLM98alBol1KgNc2xz7kwEbDt9qoJ1b+MjSh/y4Z+nGfiuKHZWX5Hw+Ru
 Sx/fwESJyNav3DjbOeDTzBG/ItKImxkNKo3AcmrAl6rDzni/9Yf2SaQlB7nJc3jwflHT
 BkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qCjUe0hDGDhMjnECf1F2ZQdV6LWs8J93Rkhj1cQXHGo=;
 b=MIbN7QTFTPBWhP3E4SNQcssqSx/BEU6YErq/9dHU32O8zpljS0N6bu18HRWb/ZNRJk
 AxkiZ0yCpsryVwGDak/DQjuAxPUFnquYEWHQM68YVSD+r7o7FoSnQ4KzLued7A8Ms1pX
 GY4uJWW/TJRbx1znjOdIVHy0FbMC5iQB0tVDgyzwRPDNj5U8ZSDe5XcE1ELhKNzY4a31
 VlbBjKRgg3T2rYq+4X0IDBx/G2OtmSClOXVJ1akdxEeHYkOpGwHqFGaNqCSnNCXdm6OM
 ebSjJoRW7nLBbIqTHnD2RrgzQCi4EkGc0YVD2L2sKiIz2WjKuTWj++5GemwL/wW8JxQv
 X/sQ==
X-Gm-Message-State: APjAAAVWvZ48ZqROp+Xy0u3fmlSFdrWoeIab7TBGEuR/ZvKf/+Zv+2hk
 lqN0a14lPE8TQP//J/4KtAbxj5y8ZGgw8TVMLkv4Vw==
X-Google-Smtp-Source: APXvYqy1vkOuGEDqTNg8aNO4jpgMMXEuZMX6RWQpVXhNioHmNHB+PBavw+PntxSsQx8Rbkok2+C/qrGdOpdJ96+qhew=
X-Received: by 2002:a1c:5451:: with SMTP id p17mr4901443wmi.103.1569387612159; 
 Tue, 24 Sep 2019 22:00:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190925042912.119553-1-anup.patel@wdc.com>
 <20190925042912.119553-2-anup.patel@wdc.com>
 <20190925044308.GA1245729@kroah.com>
In-Reply-To: <20190925044308.GA1245729@kroah.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 25 Sep 2019 10:30:00 +0530
Message-ID: <CAAhSdy1Z09tpNtfS10gL5BXJ=1wydLy4nmtFyKQenAPDSyTLTQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] platform: goldfish: Allow goldfish virtual platform
 drivers for RISCV
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_220017_393621_F4312C83 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Wed, Sep 25, 2019 at 10:13 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Sep 25, 2019 at 04:30:03AM +0000, Anup Patel wrote:
> > We will be using some of the Goldfish virtual platform devices (such
> > as RTC) on QEMU RISC-V virt machine so this patch enables goldfish
> > kconfig option for RISC-V architecture.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  drivers/platform/goldfish/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/platform/goldfish/Kconfig b/drivers/platform/goldfish/Kconfig
> > index 77b35df3a801..0ba825030ffe 100644
> > --- a/drivers/platform/goldfish/Kconfig
> > +++ b/drivers/platform/goldfish/Kconfig
> > @@ -1,7 +1,7 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  menuconfig GOLDFISH
> >       bool "Platform support for Goldfish virtual devices"
> > -     depends on X86_32 || X86_64 || ARM || ARM64 || MIPS
> > +     depends on X86_32 || X86_64 || ARM || ARM64 || MIPS || RISCV
>
> Why does this depend on any of these?  Can't we just have:

May be Goldfish drivers were compile tested/tried on these architectures only.

>
> >       depends on HAS_IOMEM
>
> And that's it?

I think it should be just "depends on HAS_IOMEM && HAS_DMA" just like
VirtIO MMIO. Agree ??

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
