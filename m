Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E42EE11F5
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 08:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/Yqi6ZTDhf2QnloDlPivajcUm5RPVXo07Vzxg3xvJQ=; b=qI5ZW18dZ+HbZY
	vKA/rUSCDBfWdgXmuhCOde3cmk1EP1eMl2MazYMZDHi+rVR2am/qkJt2BIlLVrNDUSy9FYu2wjCus
	xhhBhleoEY6Q2LX3HKFNhp68hW1UFBGC++aJYsIYJyPmutGrMrpusFl2GP72C8KodsyDZ9NTNXtG3
	A2VJz2TOwVfQgqOcP8gQqQyjGr9NkkCOCywSVlwV8A6p9qibpHrGhk0TPAM1JNJkitLhOrXzQW/Vl
	K3L2bMreMHCueIeAMfImRqtkd7vNNCUk1HhjpwTrZndqhfKJ+WTaFM0WdB8WQQxK2fP8fPsHRo/nW
	BcB/bEuIux2nnFsQI5tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN9t4-0002jT-A8; Wed, 23 Oct 2019 06:12:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN9t0-0002iV-DG
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 06:12:48 +0000
Received: by mail-wm1-x342.google.com with SMTP id r141so8732361wme.4
 for <linux-riscv@lists.infradead.org>; Tue, 22 Oct 2019 23:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s8le1WyXyeTyUa/Z2e+egXbBte2l9NNmas2pvZ4/syo=;
 b=nLqN5enMDqEAYntQA8O/U/OLZ4Os+aQ+ZzD6WpMcCZPacskczuoFfQR/hGWkoU+qOp
 595KTJObybNJe9Yttsbv8w+eQaSRN5172hZMY0c+ng/c8nFcuKqh0+x8h5L/o1sSCnkl
 Tzb5YM+U54tWEeSy9vlmVeLVLP1Wd0dfEMDdABMF52bEAMkxkJOjap7woq9L3SAmBg4H
 mP6BWpEyDTn4JzFMckLEhhs86iwEk9RvbU114w9e1Nx9vS/RR/8IOD0qy8YdzCfFbzxF
 PxLMZ4GLbHfN8VrRdRGJQSkXhY9qQTbLuqJ9Dt5yo7c65rL4e9gZEvI/SsXphv9Ovsn8
 y6Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s8le1WyXyeTyUa/Z2e+egXbBte2l9NNmas2pvZ4/syo=;
 b=ll+hlBDLPxFgKefh13n1I1JPGMMmM9V6lZgIlePrNKk+F8OUtCLsUOqo8cjidl01LB
 ZYt0nsthzJ15wMXCBb65vTtKqB2VU/L7mTV60FGRlO9uZPD7UlCl0MrB82vvKOXrifWo
 IakE/tXAuxOsCmeIBHIw/FOEwQ3ea0p80O4C95NwtjlXwXvo4bjn3htRADyeQsudRw7w
 dGIOhF534leJDIWBa0BOyr42PEROCrhlaD7c3T86MfcCd4ALP8vuujFuaLjKPF+6bnWW
 uOstz0EtK+/K5WXka6c1ICDDN/ziV8/mjjp0gNeUkk885YsXV47c7twlA6xUoepZQbAa
 NpTA==
X-Gm-Message-State: APjAAAX1G84f2J7xFGPnr6ARVDM4uq60yXBYiG03jIYfpI82Tt14oaOf
 wJvzNolAIqpKjibdL2qeGZ9H9VBzGtgSaggJg+Q9hA==
X-Google-Smtp-Source: APXvYqwyEoWUB1RH8jQxZgTmcn4QkfgMMeY3guAKffsaUXZDLVEqxRSPGnVR9jTgjqmizV+GwpDTEsSdSI25dby9QBs=
X-Received: by 2002:a7b:c4d3:: with SMTP id g19mr5690896wmk.24.1571811163897; 
 Tue, 22 Oct 2019 23:12:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190925063706.56175-3-anup.patel@wdc.com>
 <mhng-edb410db-fdd1-46f6-84c3-ae3b843f7e3a@palmer-si-x1c4>
 <MN2PR04MB606160F5306A5F3C5D97FB788D900@MN2PR04MB6061.namprd04.prod.outlook.com>
 <alpine.DEB.2.21.9999.1910221213490.28831@viisi.sifive.com>
 <17db4a6244d09abf867daf2a6c10de6a5cd58c89.camel@wdc.com>
 <alpine.DEB.2.21.9999.1910221751500.25457@viisi.sifive.com>
 <CAAhSdy3KccuzC0pV6Jy_diLwkdgb=SdHBQnsSoGrgpu6g7TCQA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1910222250490.5600@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910222250490.5600@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 23 Oct 2019 11:42:32 +0530
Message-ID: <CAAhSdy00_snfqstOg1KVookNm8kG9gW=S-7fugzv+awtk+HBmQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_231246_509263_CC73AD78 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>, "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "rkir@google.com" <rkir@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 11:30 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Wed, 23 Oct 2019, Anup Patel wrote:
>
> > On Wed, Oct 23, 2019 at 6:37 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > > Incidentally, just looking at drivers/platform/goldfish, that driver seems
> > > to be some sort of Google-specific RPC driver.  Are you all really sure
> >
> > Nopes, it's not RPC driver.  In fact, all Goldfish virtual platform
> > devices are MMIO devices.
>
> Is drivers/platform/goldfish/goldfish_pipe.c required for the Goldfish RTC
> driver or not?

No, it's not required.

>
> If not, then the first patch that was sent isn't the right fix.  It would
> be better to remove the Kbuild dependency between the code in
> drivers/platform/goldfish and the Goldfish RTC.

The common GOLDFISH kconfig option is there to specify the
common expectations of all GOLDFISH drivers from Linux ARCH
support.

Currently, all GOLDFISH drivers require HAS_IOMEM and
HAS_DMA support from underlying arch.

If you still think that common GOLDFISH kconfig option is not
required then please go ahead and send patch.

>
> If it is required, then surely there must be a simpler RTC implementation
> available.

GOLDFISH pipe is not required so GOLDFISH RTC is certainly
a simple RTC implementation.

>
> > The problem is VirtIO spec does not define any RTC device so instead of
> > inventing our own virtual RTC device we re-use RTC device defined in
> > Goldfish virtual platform for QEMU virt machine. This way we can re-use
> > the Linux Goldfish RTC driver.
>
> With 160+ RTC drivers in the kernel tree already, we certainly agree that
> it doesn't make sense to invent a new RTC.
>
>
> - Paul

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
