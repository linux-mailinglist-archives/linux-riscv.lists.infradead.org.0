Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 981E9314F6
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 20:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSENsXHStXfjOHu23QFn34TMoOjOftGS0ul0aPfz+qg=; b=Kec5iItx/4/YfK
	j2fFP0toSnSIarLjPrafYDbjEbOjl07xxfE2Jajo/cEG7+A5ayZltyeRyfiT4WrxthHLdI07z/rIU
	blF4OIMqxdh/1ekPMyaNdCCFY+5elqBgNaw9wgL28n09b67krXMm2kLsi3dnJ6LzY1PXnmYCS1AUX
	G4vvoKFFblJSuwYLFNgAiIKDJck2L4RsA6vZAYwR/LwojcLiUa00S1q79twntHWaVEJLrEo3l2s9H
	tb/w7hKlCgRuF68779Auk01b55yTIBmKfcx0ym1ywQnGjqifecNahxEAp9Mevg3ich1JKUS0E72yG
	finHdMlTBU+uZCiFTTUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWmds-0002T0-K9; Fri, 31 May 2019 18:52:40 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWmdo-0002SU-O2
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 18:52:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JHV9B7CY5P1AY/d5DQgFTyOMLZPxcZGMAdD3jQYerfs=; b=i/2HIvcsXchx7C8zTCPQ/Fq3j7
 5tUu25qWV2Y/a+nH3xwPGi1ADK/loAoXwxU/vXGkapjhN1/Lufi53N1UzC3LvMRd9EgTrPrtuIkO/
 HqGtIUrpTQPz0Kdc0Gpc0Lr6uXBxXEyDvrwk6yDksPAkvp1LolxXy47nHPiN+aazrgsA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hWmdX-00007Y-O6; Fri, 31 May 2019 20:52:19 +0200
Date: Fri, 31 May 2019 20:52:19 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH REPOST v8 3/3] i2c-ocores: sifive: add polling mode
 workaround for FU540-C000 SoC.
Message-ID: <20190531185219.GD23821@lunn.ch>
References: <1559327423-13001-1-git-send-email-sagar.kadam@sifive.com>
 <1559327423-13001-4-git-send-email-sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559327423-13001-4-git-send-email-sagar.kadam@sifive.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_115236_969006_5F2B92CB 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, peter@korsgaard.com,
 palmer@sifive.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Jun 01, 2019 at 12:00:23AM +0530, Sagar Shrikant Kadam wrote:
> The i2c-ocore driver already has a polling mode interface.But it needs
> a workaround for FU540 Chipset on HiFive unleashed board (RevA00).
> There is an erratum in FU540 chip that prevents interrupt driven i2c
> transfers from working, and also the I2C controller's interrupt bit
> cannot be cleared if set, due to this the existing i2c polling mode
> interface added in mainline earlier doesn't work, and CPU stall's
> infinitely, when-ever i2c transfer is initiated.
> 
> Ref:
> 	commit dd7dbf0eb090 ("i2c: ocores: refactor setup for polling")
> 
> The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
> FU540-COOO SoC.
> 
> The polling function identifies a SiFive device based on the device node
> and enables the workaround.
> 
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> Acked-by: Andrew Lunn <andrew@lunn.ch>

Please read:

https://lkml.org/lkml/2019/5/22/954

	Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
