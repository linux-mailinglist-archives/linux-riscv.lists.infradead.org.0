Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C874FD6B
	for <lists+linux-riscv@lfdr.de>; Sun, 23 Jun 2019 19:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSMIwJtLEu9T/6NEaXWJ8cmsK+pZkqDtrc0PjI5i++w=; b=Km37GKOvpucSf7
	uqDD2vA+QweYaQT4Diyd0ciTdZqrvjJAKDgCLQ7nlnMnxEpi2QcpbiWPMztdGfytFxeL2hE3+IYVY
	4cCBFOZVy8o82cfVWq6oRt6VyvNTgu9b5zB+s8xZJeZqiJvnOVIMt3vwuUpK4Cqi1MD/vaYvbyQYO
	HOGd6JUbMJjDetYrx6F9DHkoJwdRCzeDvLprIP8B87Ti36bwf/+idQX9rLk00BOMycrpi3ttrjI0w
	hSyAnC7h1PT6FjmwBcerAbEnFmmy+DOdfOe/YJ0pyIRQuZ/8PrwlYnErusw7vdtiqQYqFBSNlGViA
	Pn+f0DZnUyI946HUySVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf6ei-0000j3-2r; Sun, 23 Jun 2019 17:51:56 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf6eO-0000YG-ER
 for linux-riscv@lists.infradead.org; Sun, 23 Jun 2019 17:51:37 +0000
Received: by mail-io1-xd41.google.com with SMTP id u13so682026iop.0
 for <linux-riscv@lists.infradead.org>; Sun, 23 Jun 2019 10:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Q2J+zKT6qsK6pe1jDDGYOH9t9wEmd7xRD0oxX/ZUOXQ=;
 b=mvMMAei/5azOZcypBaEq8btNPNLpZxE8KXSkooN06cOew1QavQgeymrVjqWBjat1GL
 uzBIDawPiu/bbiNJmLhZPmISgjP9aSiopTaL/7FR1APjAYczi+W0RvE9jR1WzBLBerqU
 7u5n19EJbrps00jQxZD4b5DiKjfAR2j6nJ3QDQUWgjjIP4uU7Rl5uAh4S4a2XlFtPU/d
 Q/Hnk1VimSW17bTId6rZHzDJiIQT2NBzvQefxhxRpAncjpMwQ7wUhc12FxoK2tKIdDcx
 XjQBxcDItwoOpcj78IDtHiU5jixCisA0Fsm4m9M9YUFLtXmouM0VW0sBz9+81nwGIiVL
 jisg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Q2J+zKT6qsK6pe1jDDGYOH9t9wEmd7xRD0oxX/ZUOXQ=;
 b=eSs45R8emzdjjt9NiUZuuLR7OrySDx8pcTbxlYgnSG7fE0kzZRUbwFj/4diKnka+2a
 MIydIVPdrEl7Y0CeFZ/XvBjvxD/cVy1pe3GTHLS661g7ZESYDcoou3wKScVQWMCbVT2U
 VsybnOwScoQLTXmUu84POAhnAv809PetNjw+Z+Bwn6ZmcVNcTC7/KidzH/nKmhje8CpN
 jDuc2mkpKZlgJkOJ5REA4NAJJG2W/rwWgKYk6g9AsWqDFVxT77Qg4uuhqImPjbH7c5PY
 Zl87nAs69uS2YGuSjDAuSD7NI526/kdi2El8AAB1WEQYkcJ2vZwMdnk8K2ckwfxiYwkI
 G6LQ==
X-Gm-Message-State: APjAAAWYhghvhMb6LScq++3Y9tRQmAK5+FOllaEpFXH5/WLbzjsOKOSh
 NWSMcl6C9zRjDN3PADKXIAti4g==
X-Google-Smtp-Source: APXvYqzhFIic7VRKdOafvYSegTmj3HQpbIxq+GXv4K4JVmIbUVqc3WLm1Nzru7qiZWB7KESBlTOu5w==
X-Received: by 2002:a02:ce52:: with SMTP id y18mr19504458jar.78.1561312294952; 
 Sun, 23 Jun 2019 10:51:34 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 r5sm7607520iom.42.2019.06.23.10.51.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 10:51:34 -0700 (PDT)
Date: Sun, 23 Jun 2019 10:51:33 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <Atish.Patra@wdc.com>, linux@armlinux.org.uk
Subject: Re: [PATCH v7 3/7] cpu-topology: Move cpu topology code to common
 code.
In-Reply-To: <91559562f2958fa904b53e621e596d6216efa9fb.camel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1906231045280.13854@viisi.sifive.com>
References: <20190617185920.29581-1-atish.patra@wdc.com>
 <20190617185920.29581-4-atish.patra@wdc.com>
 <20190619173801.GB20916@kroah.com>
 <91559562f2958fa904b53e621e596d6216efa9fb.camel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_105136_549830_700A38FC 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "morten.rasmussen@arm.com" <morten.rasmussen@arm.com>,
 "jhugo@codeaurora.org" <jhugo@codeaurora.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "Jonathan.Cameron@huawei.com" <Jonathan.Cameron@huawei.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ottosabart@seberm.com" <ottosabart@seberm.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Atish, Russell,

On Fri, 21 Jun 2019, Atish Patra wrote:

> On Wed, 2019-06-19 at 19:38 +0200, Greg Kroah-Hartman wrote:
> > On Mon, Jun 17, 2019 at 11:59:16AM -0700, Atish Patra wrote:
> > > Both RISC-V & ARM64 are using cpu-map device tree to describe
> > > their cpu topology. It's better to move the relevant code to
> > > a common place instead of duplicate code.

[ ... ]

> I guess Greg has acked the series assuming that it will go through some
> other tree. Can you take it through RISC-V tree ?
> 
> Sorry for the confusion.
> 
> Note: We are still waiting for RMK's ACK on arm patch before it can be
> sent as a PR.

I'm fine to take it through the RISC-V tree, once Russell acks the 
arch/arm patch.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
