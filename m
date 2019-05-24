Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0F32993D
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 15:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdimYPa4Z3pNOFYc1KrgLVvtOkwO5vI/+ihFl+uPkfY=; b=j1+RLQBq8KfGDP
	ZFXpVj2G4zqlepVA0Ep35SmNlrkA0KfXQlGrT8mCDJhs/JFR94pP3wtEXTMheG0qrwnUeNsBuQtaO
	3FiOEUr158wvh5sebEKtutNfrjuLA5ZdkDFijMHSdRlIzhih1IvHc2VdMOAxe117k6stz73kdYmn1
	OzyIVTkkB01C3OG11jcjgOcem28hiH2AdpLna7Q0NdYMyl+AvUKWC62uvk6e1HfoYfn+OoBT1grX6
	v+2FPsGtd0n5Ok6rS3obN9wgLTJJIhuHBSRUfBgNg0OwefA+F0sQOR+MRy3qMR74CpHxEwHLVOuYk
	DN7U40nXZ3O1wMnUMN2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUAZH-0000Bs-44; Fri, 24 May 2019 13:49:07 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUAZD-0000B8-G3
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 13:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bdm8kgXmeh9EF5AOQiQM32qgv2w2u6Wxm0nFHm8Ro9c=; b=U5RHUHJv8X8iYT4p4utPOVNhvL
 lhdLXlGiQCfmCjjAY9dxWArxBVjjfujLqrStsr2yedxxLcj0jFAKfgD/X0tcLHU9IlaB6RDGwtK0D
 /bOWGRlOcgkkCMSayMDzT+wRgijnK+orwZQPUdmiYtOCG4LGlawmCc12+rvVFR1B1a44=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hUAYx-00019j-Ak; Fri, 24 May 2019 15:48:47 +0200
Date: Fri, 24 May 2019 15:48:47 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH 2/2] net: macb: Add support for SiFive FU540-C000
Message-ID: <20190524134847.GF2979@lunn.ch>
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
 <1558611952-13295-3-git-send-email-yash.shah@sifive.com>
 <20190523145417.GD19369@lunn.ch>
 <CAJ2_jOE0-zK1csRNeiAmag9kEbvOGhbvRa-5ESYif7e15gpRcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2_jOE0-zK1csRNeiAmag9kEbvOGhbvRa-5ESYif7e15gpRcQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_064903_690665_D7DCF1E1 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 davem@davemloft.net, netdev@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, Sachin Ghadi <sachin.ghadi@sifive.com>,
 robh+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, ynezz@true.cz,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 10:22:06AM +0530, Yash Shah wrote:
> On Thu, May 23, 2019 at 8:24 PM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > > +static int fu540_macb_tx_set_rate(struct clk_hw *hw, unsigned long rate,
> > > +                               unsigned long parent_rate)
> > > +{
> > > +     rate = fu540_macb_tx_round_rate(hw, rate, &parent_rate);
> > > +     iowrite32(rate != 125000000, mgmt->reg);
> >
> > That looks odd. Writing the result of a comparison to a register?
> 
> The idea was to write "1" to the register if the value of rate is
> anything else than 125000000.

I'm not a language lawyer. Is it guaranteed that an expression like
this returns 1? Any value !0 is true, so maybe it actually returns 42?

> To make it easier to read, I will change this to below:
>     - iowrite32(rate != 125000000, mgmt->reg);
>     + if (rate != 125000000)
>     +     iowrite32(1, mgmt->reg);
>     + else
>     +     iowrite32(0, mgmt->reg);
> 
> Hope that's fine. Thanks for your comment

Yes, that is good.

     Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
