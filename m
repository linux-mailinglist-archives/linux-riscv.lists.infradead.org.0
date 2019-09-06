Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4088EAC291
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Sep 2019 00:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEX91Hcs83553PwLt4OXM89NBI8wa0f3uOMNEiOMxiE=; b=pYexD79Wl1cbcR
	e//OJjavngG0EjhwjAjo9ixrbzsGB1UiWkKoEtQhHRxOkKBX0MEDkDZl+NTT9rEmIQ/IdNOPYBMOu
	pDd14Avw0zrTcogzNVz0VOKaf9k3zwOact7Bkg6iuu/Y4KJMMtDrGx4s5CdJCkD8swuq6Nx27K1QU
	56Hh8KSmC1X+rl31dWF7HqEc6GTS5NmvgqtQBipj6UGbHJenE9C/onb0bW99kF5ddc9CwVLouIq9U
	+x7T0QEX57XLi7gYiBK55NsPphW7RUWm7i42LqLtKiw50Hh5qYcWeMIbcxlR6Muz2HZEVEKUdmHBq
	KoXNO3FEwYhftIOVHIDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Mn2-0002wj-Tt; Fri, 06 Sep 2019 22:33:12 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Mmy-0002w0-Q6
 for linux-riscv@lists.infradead.org; Fri, 06 Sep 2019 22:33:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id j4so16319325iog.11
 for <linux-riscv@lists.infradead.org>; Fri, 06 Sep 2019 15:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=YRsccmFbDQQjungCxi/rfzbQ2IZD8msr9cyayv1Eid4=;
 b=ZcgTOH2jNyuEvpZxi4ZVGo6r3CKvNsWrq2VWnLanEds/0AAZvZeKuFE9gYXsFIJ54u
 /sdDa9wCmYdQds2kybVvEZWLXpGtnj39ehpMP/91t+kvUNF3jhgq52a6wMgBAmb15KwO
 f0xROPrHflfSto6hFc1BZA9BvJm/2IgZClYWmD4+9mXI24yq5vVFaNPEBeSQwhHoL123
 yo5GbF2hbmfH+ia7/IL/DA2cxU4IdYn/tOkSi+qCJEXECxifR8uhx9t+Q4yR6YmNLgr5
 cRj3i/6wOlL1Nb1Pb/FGYUPiAPU3u5Bo5MIvhQqNFAdrgMwcOX2qoz0JEnJfTYJDcHKC
 bI1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=YRsccmFbDQQjungCxi/rfzbQ2IZD8msr9cyayv1Eid4=;
 b=AL/JDj2qrAPsFn1O/ULZMy12JjnxGZJaWZnx1Qgj/aXvBzEvxA6gNHuQQJhnc77NIc
 C6qu8p2e+pVZdD/vnaf+Ai+AtSTXgK1SKp+4D1MURAqAa5ROs7eaPZHyo/L4TMQOiFqE
 JLhEuw1VNeqImEVT0sqo7OpdzvHl86+xCiuWIPaKrNY5ouHyy8i1VYHaaPOk3CspKO4J
 4AT5+vmpPEkGrzi0KvOftEpRjVzQ7R5WNTrSfdtVgIaTyzGsSMzyxuxYWOGF3B3MLKwD
 UtGnWBJTdVEmD8FNi/9pTxMLd0azcYunggbUw0dJyFLDAuSiRm0N+QpHNVvdVd5jSDHI
 b++A==
X-Gm-Message-State: APjAAAVsOVwjmyhjCdmB8w0+lhujo8pqUQmir8pVZBLSeaLU0sCD0d8/
 9sh/1Lt5IJ7f2Hg78jEoYO+FLw==
X-Google-Smtp-Source: APXvYqyxdUW/2++hNyntiZhHPRTa5wOzs/5LZb+eIJajhIYFEi8CvuN3riIJHG7wc9yCykPSpHpnIg==
X-Received: by 2002:a6b:ee17:: with SMTP id i23mr12722648ioh.168.1567809184139; 
 Fri, 06 Sep 2019 15:33:04 -0700 (PDT)
Received: from localhost (75-161-11-128.albq.qwest.net. [75.161.11.128])
 by smtp.gmail.com with ESMTPSA id u6sm4457439iop.18.2019.09.06.15.33.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 15:33:03 -0700 (PDT)
Date: Fri, 6 Sep 2019 15:33:02 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/soc
In-Reply-To: <20190819062619.GA20211@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1909061527510.6292@viisi.sifive.com>
References: <20190818082935.14869-1-hch@lst.de>
 <20190819060904.GA4841@zn.tnic> <20190819062619.GA20211@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_153308_850662_CB076A2C 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: palmer@sifive.com, linux-kernel@vger.kernel.org,
 Yash Shah <yash.shah@sifive.com>, Borislav Petkov <bp@alien8.de>,
 linux-riscv@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019, Christoph Hellwig wrote:

> On Mon, Aug 19, 2019 at 08:09:04AM +0200, Borislav Petkov wrote:
> > On Sun, Aug 18, 2019 at 10:29:35AM +0200, Christoph Hellwig wrote:
> > > The sifive_l2_cache.c is in no way related to RISC-V architecture
> > > memory management.  It is a little stub driver working around the fact
> > > that the EDAC maintainers prefer their drivers to be structured in a
> > > certain way
> > 
> > That changed recently so I guess we can do the per-IP block driver after
> > all, if people would still prefer it.
> 
> That would seem like the best idea.  But I don't really know this code
> well enough myself, and I really need to get this code out of the
> forced on RISC-V codebase as some SOCs I'm working with simply don't
> have the memory for it..

If that's your primary concern, then in the short term, how about just 
sending a single-line patch to the arch/riscv/mm Makefile to skip building 
it if !CONFIG_SOC_SIFIVE?  Assuming, that is, you won't be enabling EDAC 
support for those low-end SoCs.  Then you won't need to get the ack 
from the EDAC folks in the short term.  

Then a patch to make the SiFive platform EDAC driver build contingent on 
CONFIG_SOC_SIFIVE could be sent separately.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
