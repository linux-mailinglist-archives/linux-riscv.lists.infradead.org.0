Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDA0E2265
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 20:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyWiH60cE3P0A2HWgO8xUwiKWN4kwUtPEjQYAzz1rFg=; b=NUPfr+27fXfAtz
	lpwlwLhI+hSVMSYSQL4yFuUysqCbFBIEK4crJMq/+WYp3m0DGen0BpSB1A5Co2aUfojkwR/wDIWLi
	p/Z03CB4F9ynM5EHhItCDuIuqLNCsZ9Jp2B/wxK6cCRfKOplnj073Gt42cLNaej0UVyKevbFQs8pH
	VWEQkUpi1vh3KtGlquMBMxSeSYvuXXLf9jCTcDHS6OXLj3CMGLoHT1quTNFGpMso+IMWfpeRwsWrN
	i9njMmbkBMCGCnchDSXXktgsGW28HMeOPgsTAMQ3CdELpxoAUSZT560+7CGpTSIDtw06pnupxTsAj
	5wsWY9CrUf3832/TcaRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNLFa-0005S3-4K; Wed, 23 Oct 2019 18:20:50 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNLFX-0005Rg-HQ
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 18:20:48 +0000
Received: by mail-il1-x142.google.com with SMTP id z10so19827169ilo.8
 for <linux-riscv@lists.infradead.org>; Wed, 23 Oct 2019 11:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=cr0Vtx0reZzkDlmdhcZ3EYluM7nHng2kcraV93Vgyr8=;
 b=Rgd5N1hvz98N4/5VEEjWMENv0zY4o15fAXfVUmgXOr5kFwb2L1JpLNz74sJlH0XA8x
 +X/AkcKRO1SXMyEjgnLOVWCTYrKz0HWpMpvCqdceKMS5XsK+3L4gwptudK9AQ60Hdf0S
 2+o4rzJjttjdcn5wqz8LgV8iCH2TpGlmVT1LVfFDyzgkPdd/Qvq/yaSNzVnhsZYPzful
 Xx2UoMpzlFlQeJUHzBUpVkOjsqQ7/bDkYRebDZw01F6cXRoR//2X5S2w+KWN9gh7N5C0
 dcXVc97a2onezO/+e8+f6xibPyK6YKAoANs7QIxhk3hYACxdP3W+FG+O9XYOywPF+vgC
 VYiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=cr0Vtx0reZzkDlmdhcZ3EYluM7nHng2kcraV93Vgyr8=;
 b=DSmJiBsE0MhHMNsaio3dNm3KqZ8MydoVHnnbJUY5SoN5P3b/wD6m36g2haCHiUrtoC
 w7+QyJ3aiJUswNujIl2yr8lOSB7SkuTbF5EKaZp5nRxMJViA62NXmTeZElkaAALqlhMY
 pRZfIU6vs+yZ1oUcm6ictPKoiglisVdJ+lAIenX0AcgUZOkblNsIMsYC6J8GvgqeBpHV
 13V6OVFgbMzPjmsI4NY1Ja/ZvtDpLhec1K83PEwDAkmv6dvrmdpd5mW+oQiSGb8oLbW8
 gzm4wWTxZEC8UUupui4zvCQ8F7qCb0NfmK7vMYWwWxWiUtqKHQLLYyOg75PaTfVEtnaZ
 nqRQ==
X-Gm-Message-State: APjAAAX4Q8LMpy5Ym3r1d6REPt4lNWwcL6yKumBgzaWgvIpLvV2dp3OK
 6IsgIk/c5LGW3bnRs+I6HLCwYmUL6Os=
X-Google-Smtp-Source: APXvYqw3iYvv5VTYTmNduAhmYFVuDjtYBkkgceBDIdE9o6mjkUsbecydETj/isIWbbDpFLIhTEgJeA==
X-Received: by 2002:a92:9198:: with SMTP id e24mr17314487ill.184.1571854846193; 
 Wed, 23 Oct 2019 11:20:46 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id f8sm6989137ioo.27.2019.10.23.11.20.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 11:20:45 -0700 (PDT)
Date: Wed, 23 Oct 2019 11:20:43 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alistair Francis <Alistair.Francis@wdc.com>
Subject: Re: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
In-Reply-To: <678b7a7a82adb389e34f023d282a7935f41e356a.camel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1910231105170.16536@viisi.sifive.com>
References: <20190925063706.56175-3-anup.patel@wdc.com>
 <mhng-edb410db-fdd1-46f6-84c3-ae3b843f7e3a@palmer-si-x1c4>
 <MN2PR04MB606160F5306A5F3C5D97FB788D900@MN2PR04MB6061.namprd04.prod.outlook.com>
 <alpine.DEB.2.21.9999.1910221213490.28831@viisi.sifive.com>
 <17db4a6244d09abf867daf2a6c10de6a5cd58c89.camel@wdc.com>
 <alpine.DEB.2.21.9999.1910221751500.25457@viisi.sifive.com>
 <678b7a7a82adb389e34f023d282a7935f41e356a.camel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_112047_640251_945E914C 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "palmer@sifive.com" <palmer@sifive.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "anup@brainfault.org" <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "rkir@google.com" <rkir@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019, Alistair Francis wrote:

> On Tue, 2019-10-22 at 18:06 -0700, Paul Walmsley wrote:
> > On Tue, 22 Oct 2019, Alistair Francis wrote:
> > 
> > > I think it makese sense for this to go into Linux first.
> > > 
> > > The QEMU patches are going to be accepted, just some nit picking to 
> > > do first :)
> > > 
> > > After that we have to wait for a PR and then a QEMU release until 
> > > most people will see the change in QEMU. In that time Linux 5.4 will 
> > > be released, if this can make it into 5.4 then everyone using 5.4 
> > > will get the new RTC as soon as they upgrade QEMU (QEMU provides the 
> > > device tree). If this has to wait until QEMU has support then it 
> > > won't be supported for users until even later.
> > > 
> > > Users are generally slow to update kernels (buildroot is still using 
> > > 5.1 by default for example) so the sooner changes like this go in 
> > > the better.
> > 
> > The defconfigs are really just for kernel developers.  We expect users 
> > to define their own Kconfigs for their own needs.
> 
> From experience most people use the defconfig, at least as a starting
> point.

We'll definitely add it to the defconfigs, but I think it makes sense to 
do that once the patches hit the QEMU master branch.  (No need to wait for 
a QEMU release.)

That roughly matches what I understand the Linux kernel's approach is to 
adding hardware support: no point in adding hardware support until it 
looks likely that it will actually exist.  Otherwise it just adds churn 
and maintenance burden.

> I was under the impression that everyone was on board with this going
> in. In QEMU land it doesn't make sense to add it if the kernel isn't
> going to, so we need to be on the same page here.

Whatever RTC gets added into QEMU, we'll take defconfig patches for.  I 
don't care which one it is.  Based on the patches that hit the kernel 
lists, it initially looked like the Goldfish RTC was more complicated than 
it needed to be; but it turned out I just didn't look deeply enough.

> From the other discussions it looks like you are happy with this change
> overall right?

Yes


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
