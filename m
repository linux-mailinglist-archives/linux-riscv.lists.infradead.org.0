Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E686E651
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jul 2019 15:27:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wUAnghcsInvqffG6uS8sFRUkGnAWA1vZvzldwtxRPc=; b=HpH0X+dRdjIonF
	yEo315IuXCmF/jDnqm4iUtsIijXyGwz2P7lmAShu7ZQt2lD4Fuy4I5xfsfOnHa0ASoV6yB6QpJmc8
	fPpe3SX05g0s0oXbiUWLnZycr/YqTCPiS0bBOXyHcoJDLJkgZAwDWnbYwoY+RoIYgsyLkGgR39LaV
	I06S0MQ8jqoQdQGqEZ9RTfFT/Ogp33gNiDUEjndxiqns5+5FUJyZdvhB3W8XOV0oo3D1w+NIbThzA
	i3dJdWz0D7cZueTqyo9PCvHUBD5DYD16CJ4rW2NlE22O1IIp0qDRC+KYsHaA9T9nidVa53zITqhtc
	qmolKo/nhQarFTJkPUTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoSum-0002XO-PO; Fri, 19 Jul 2019 13:27:12 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoSuh-0002WV-He
 for linux-riscv@lists.infradead.org; Fri, 19 Jul 2019 13:27:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pky9viuD0oMDaJSoHdvUAeTOz0jBwYPwJje4fFabTHU=; b=PVB/5sDt8JO1QPzJBKxZ8mraPo
 F/njzXIy4mL2QNrBSOcPF5R9AhwgOgMGaDXTMT2tsinFyHLTqU0c8nC5u6ClaCqG0mE330J+R0SlS
 lCzgjEz167T6Wj5iAT7pFI39Hc0tYOToCZVn8xH7TpVEyfO3bYfXCELlIUMHbAtza3pg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hoSuX-0006qO-Iq; Fri, 19 Jul 2019 15:26:57 +0200
Date: Fri, 19 Jul 2019 15:26:57 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sagar Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH 3/3] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
Message-ID: <20190719132657.GD24930@lunn.ch>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
 <1563534631-15897-3-git-send-email-yash.shah@sifive.com>
 <CAARK3H=D1N8gO0Z82_MCtgr5DtT1=E0wzYbn-y451ASgxV-qBg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAARK3H=D1N8gO0Z82_MCtgr5DtT1=E0wzYbn-y451ASgxV-qBg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_062707_740815_58CB8D76 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, netdev@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, ynezz@true.cz,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 nicolas.ferre@microchip.com, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Yash Shah <yash.shah@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 05:23:45PM +0530, Sagar Kadam wrote:
> > +&eth0 {
> > +       status = "okay";
> > +       phy-mode = "gmii";
> > +       phy-handle = <&phy1>;
> > +       phy1: ethernet-phy@0 {
> > +               reg = <0>;
> > +       };

Hi Sagar

Is there a good reason to call it phy1? Is there a phy0?

Thanks

   Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
