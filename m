Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6126709AB
	for <lists+linux-riscv@lfdr.de>; Mon, 22 Jul 2019 21:25:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D9p31KoBz2ryr63/69ePQhNMfnTZzO1CpMeaohqYPwI=; b=HZRKRKJpEtD8i/
	1E6wG/qDbjYKfYl+K8wHJ9dltTNrp01nJSnrX3lUUdwmuflXrHUkJ4UOJV59JrG53do+KMBNgtZwX
	44ZzoZc7ehfUhl77Kf1Q9JFCLFV1onrJiLr2PLSoyJcBC8o95NHmoXuwoSD6z1QLxEgvz7GwGpyqQ
	/X9F7Nk5swofxr31qIjEdr3b9X3ejvZwA1ynaTHc4zV2JVh46io+3gG/cfxqEvLbb0vxt4oM/6szs
	eGRiSLOBGCNu4F2f2X9WpvavMOcc34OFMUlYQdhRbJNpN8hz4G/uNUPROE1ul9xNUgsS412pcpeoz
	rkG7Prc3YGlO0tvp5Llw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdw8-0002Tw-Ky; Mon, 22 Jul 2019 19:25:28 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdw1-0002T8-0i
 for linux-riscv@lists.infradead.org; Mon, 22 Jul 2019 19:25:22 +0000
Received: by mail-io1-xd44.google.com with SMTP id m24so76533179ioo.2
 for <linux-riscv@lists.infradead.org>; Mon, 22 Jul 2019 12:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=rf8ryiSI7gM7VW/mCBLHJLZdnlhJlIXGezmFbO+mcVw=;
 b=Xb5UwnBHkO/b7wAi1N5yXMS813VTh/5G24EzGuW5yJgQJgkjhUeKrTPSDkIp1KfUd6
 Iv3pWmtQA4mpIFFovuwl6FoaHQR+QSADg5v7gsjVpmHM4SI31heH50S/PkRTLaYA9lce
 +01E1ByorK9WOcBiaZz1FUtb3mjsV1xoqE6F7D9Yu4CWdB1e4XcdnZ0wBUR1TvQCcGr3
 ckF18v2qRvhL6FFsnkyEXeWtWu9RH4YwxumHUnoMed1uigXSdgTxN3sMKYU/ijspqfyX
 VfcYR7l9OaMGtYoRIf9WRepYgUU+N0FLHXUuyZvPMCKyhk68ZrFYinGWON2Tbg1EenkL
 KhVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=rf8ryiSI7gM7VW/mCBLHJLZdnlhJlIXGezmFbO+mcVw=;
 b=kQXqVOlTu1tOEIe9DZwsdY2ac/bqn6DmyKUegpHZg4fZcHIzGSzjCFczbspLhxqq40
 eHdxkLN0t9r4PlpeloR1oWOnHCY0hRcglJpjAyvGfUouJ/73qiuFsBUpCqGqzJfOkvU7
 c7hLlB5K2i5CGiNZXQsIcQs0w4Rhube5Ss/IR4KZ0L8Hs6SM8szqL2GbP/4qmU8A6OD2
 DIsHR1oTM/PwsXxEX/ayRpP+rwJ1Mc0CmWnX4JWWUhANtArbebwAIxm5c8odp4FuyEV2
 ImQEP52dBBHXCANXjnM4sak/CNyd/pIMQYQssFJgHSqc2jEQFunEPfgm7fBsqZFOnKGT
 0WQQ==
X-Gm-Message-State: APjAAAWB0+bPFpNBRq9VdE8fwIApkbFRyF++2l0ADOgN5NgAnTle0cgx
 s65wIWOr77quGsnybyJmhJy+0g==
X-Google-Smtp-Source: APXvYqwYUcpO+JDt/loIDZQbYbOA1X6JHoiG+W3zU6bs1mBiztsz8Q1eqm+2GIS51glKmkkHqpFvIQ==
X-Received: by 2002:a02:cd83:: with SMTP id l3mr39191324jap.66.1563823519409; 
 Mon, 22 Jul 2019 12:25:19 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id n2sm41584533ioa.27.2019.07.22.12.25.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 12:25:18 -0700 (PDT)
Date: Mon, 22 Jul 2019 12:25:17 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V 
In-Reply-To: <alpine.DEB.2.21.9999.1907121012050.2267@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1907221224170.23563@viisi.sifive.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907121012050.2267@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_122521_076718_2E1B742F 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 12 Jul 2019, Paul Walmsley wrote:

> On Thu, 27 Jun 2019, Atish Patra wrote:
> 
> > The cpu-map DT entry in ARM can describe the CPU topology in much better
> > way compared to other existing approaches. RISC-V can easily adopt this
> > binding to represent its own CPU topology. Thus, both cpu-map DT
> > binding and topology parsing code can be moved to a common location so
> > that RISC-V or any other architecture can leverage that.
> > different config for the architectures that do not support them.
>
> Once v5.3-rc1 is released, let's plan to get these patches rebased and 
> reposted and into linux-next as soon as possible.

These CPU topology patches are now queued for v5.4-rc1.  They should enter 
linux-next shortly.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
