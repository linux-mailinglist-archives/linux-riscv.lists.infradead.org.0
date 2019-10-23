Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3263E1086
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 05:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwK5YnItBDChcrfipyzLvFWNHop5f79+WpP7zfLfNDI=; b=tnWfz1+WDrTy2y
	bOHW7nMHkRzYL9oPNtnOM/iuNNGVoGguHexBkPB3ZBz+Aua7q5kZiJswJNZ8dgMwMct22wk3gUZsu
	o2BUsPIG/acONmc0ZafSf3llKV7LjeN6KdYpH8pOrTWMZdiC4LS2nCJNI3J/y+xxa9oaDZXRn1M7F
	+oc+Eno3fDwQt4PDgOMLkdj6DIrTOZJLE3oWQS9BeLdPDdD5H0k7TNdSzl5Vv6O/X0m6pzsXvWx4q
	IwwiYRWKeDkNXzEq20BKteVJYgZOTh1nwqqI+CQpIHKHSpMrTuoaQyvVk8cPVGIYiutxv4cIhxC+U
	dvHAAjUptrNySvksobHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN7GI-0002uN-C0; Wed, 23 Oct 2019 03:24:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN7GE-0002tc-1o
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 03:24:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id 6so4977087wmf.0
 for <linux-riscv@lists.infradead.org>; Tue, 22 Oct 2019 20:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PoiwGNtU0nAEwpqhaQ40WOeNzy+Ug1D1A+7yaqwVZpE=;
 b=yLN/ddNFMfFhvPjBZjTwKqoSwWn/DGdu7QUqpRbP8p9LI1mFK7KIlnrmHTLH01uos+
 X0D82O2AYz2IOS9/+jyeTWKP9FcdB/e3uP6Z42DJbWTV6MQr7OkuzYq3kjk1RuEoOSOC
 eNv3Qo7LIIG+xOTLtiUJ+6EnRnxxTFzlGvAGBHGPUMmYKgEhFhfnbJFhQI1rQPdG1OiE
 d96LttnBqOssIU7NYDQc5/uF1ZD1QnrxEj/9dMaee9uPD4JB1Vjxwda0O5TfOCTW1vBp
 YBogOBQGt8j3ddQYskXwVEGM3mtoVnSL2pbeaIDRQvrjheAM3nxeNfolhNL/blZzk/9l
 TX+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PoiwGNtU0nAEwpqhaQ40WOeNzy+Ug1D1A+7yaqwVZpE=;
 b=ScJUi28M8nqDlyT7TfkuDbT+0Xa00+hjUDFKk91e4hhW4wa3UUp1V/YQ+Fq5jjGg0S
 3u2tsa6XhmJXH76/bz1wLUz1ZI8PJ1sao95DFG/d77feAwbOOFOlWMGvGyNwHusw2uU9
 EpHKDXwUkdQvkufGoFWAIMCS6JC3lKIAtoSGTa2SiWi6UT/jJdUKSdx6uyI7cJjtsNmb
 +04aIIJ9FIG7nDFdedyU0Dm/KsTDRNyaG20LtYqqlXT1Fyb+2Viv+aDUaiKoh/JXnCuR
 C203jcKvybnvkkjQH/x1vf4sHakvIitV/dUrNjsupKNF6hhndBYiLAIVznn0xLmdNRKl
 YGsA==
X-Gm-Message-State: APjAAAXtFIOGQwf5LQUreEsPh31N1Yqi5AI/2xsYl7rclObm5dRpqAHl
 1XnQf2lGiv2gTGn0IFKFCznQ9FvfJ3Ow1XQSS4ra1g==
X-Google-Smtp-Source: APXvYqy5Sx8ql4wbo4/WWnaIsB4nlRntpQJU9X6Eo8IJsbZIxg84bb2+RxjkQXSTZmod8Omr2TCvJvSRKbaedXpuwn0=
X-Received: by 2002:a1c:9695:: with SMTP id y143mr5676311wmd.103.1571801071659; 
 Tue, 22 Oct 2019 20:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190925063706.56175-3-anup.patel@wdc.com>
 <mhng-edb410db-fdd1-46f6-84c3-ae3b843f7e3a@palmer-si-x1c4>
 <MN2PR04MB606160F5306A5F3C5D97FB788D900@MN2PR04MB6061.namprd04.prod.outlook.com>
 <alpine.DEB.2.21.9999.1910221213490.28831@viisi.sifive.com>
 <17db4a6244d09abf867daf2a6c10de6a5cd58c89.camel@wdc.com>
 <alpine.DEB.2.21.9999.1910221751500.25457@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910221751500.25457@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 23 Oct 2019 08:54:19 +0530
Message-ID: <CAAhSdy3KccuzC0pV6Jy_diLwkdgb=SdHBQnsSoGrgpu6g7TCQA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_202434_119097_2182C0F7 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

On Wed, Oct 23, 2019 at 6:37 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Tue, 22 Oct 2019, Alistair Francis wrote:
>
> > I think it makese sense for this to go into Linux first.
> >
> > The QEMU patches are going to be accepted, just some nit picking to do
> > first :)
> >
> > After that we have to wait for a PR and then a QEMU release until most
> > people will see the change in QEMU. In that time Linux 5.4 will be
> > released, if this can make it into 5.4 then everyone using 5.4 will get
> > the new RTC as soon as they upgrade QEMU (QEMU provides the device
> > tree). If this has to wait until QEMU has support then it won't be
> > supported for users until even later.
> >
> > Users are generally slow to update kernels (buildroot is still using
> > 5.1 by default for example) so the sooner changes like this go in the
> > better.
>
> The defconfigs are really just for kernel developers.  We expect users to
> define their own Kconfigs for their own needs.
>
> If using the Goldfish code really is what we all want to do (see below),
> then the kernel patch that should go in right away -- which also has no
> dependence on what QEMU does -- would be the first patch of this series:
>
> https://lore.kernel.org/linux-riscv/20190925063706.56175-2-anup.patel@wdc.com/
>
> And that should go in via whoever is maintaining the Goldfish driver, not
> the RISC-V tree.  (It looks like drivers/platform/goldfish is completely
> unmaintained - a red flag! - so probably someone needs to persuade Greg or
> Andrew to take it.)

GregKH has already queued this for Linux-5.5 and you can see this
commit present in linux-next tree:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/log/drivers/platform/goldfish?h=next-20191022

>
> Incidentally, just looking at drivers/platform/goldfish, that driver seems
> to be some sort of Google-specific RPC driver.  Are you all really sure

Nopes, it's not RPC driver. In fact, all Goldfish virtual platform devices
are MMIO devices.

> you want to enable that just for an RTC?  Seems like overkill - there are
> much simpler RTCs out there.

No, it's not overkill. All Goldfish virtual platform devices are quite simple
MMIO devices having bare minimum registers required for device
functioning.

The problem is VirtIO spec does not define any RTC device so instead of
inventing our own virtual RTC device we re-use RTC device defined in
Goldfish virtual platform for QEMU virt machine. This way we can re-use
the Linux Goldfish RTC driver.

BTW, I will send-out QEMU Goldfish RTC patches today or tomorrow
addressing nit comments from Alistair.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
