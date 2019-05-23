Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9058E28047
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 16:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUSwyBio1Kk9ivn4K4IOnlW8tngJEXE5unwcLOp1lBg=; b=T/+bsrJmq3F+gG
	dgYnAf21ToH/w36CgCTMmcBHF+RUxVzlSsMmj1uF3ThOGHmWCB9sMvN5OUEO3ykLHhZ0DudvgYay2
	D+bOWnzHPKaNTwYmspx3517Xnwi7Z1VdkAswG/cIKlXxLu+DFidJjYNEPCcRefIXw83Mnxrd+ds4B
	TeR/y1uw/LnwzYYVA/RYn8M5BXQcffqGq6zMcAVrRU4amXx9YlpEjPu3H1Dw4i5ws7JR5OFdvriDf
	b8VDUD/wrASDh6BEbj2/pywpnDe/B2gN3t8F7dK87E3zDXhAZTP/IapD0CmAn/vEFCug0idf211Ju
	5okeCIEDcot3r8KfHIaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTp6u-0005TF-TC; Thu, 23 May 2019 14:54:24 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTp6r-0005Sq-BH
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 14:54:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QsNRmpnjYf1hJO0vJAth46QB5G5/Hx/TJi5PoeQ3ZKE=; b=gnDHUvE0zYfVe/z+pFqNNld1Lg
 LFU1f7r1uQbzTxj5uh6S7jG65QicVcmNQ2tjUhDripR/Wdu3IwAQGSTVWu3HWfLLgf9uO6bYmgvuK
 /vQxUPYFYvqqQ/biLuaKgrMPlE7rzUfQvNlyA+TSlR3SM/w1zgZoS05GO7HZ8t0fW+/k=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hTp6n-00067V-HQ; Thu, 23 May 2019 16:54:17 +0200
Date: Thu, 23 May 2019 16:54:17 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH 2/2] net: macb: Add support for SiFive FU540-C000
Message-ID: <20190523145417.GD19369@lunn.ch>
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
 <1558611952-13295-3-git-send-email-yash.shah@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558611952-13295-3-git-send-email-yash.shah@sifive.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_075421_540249_76CB225F 
X-CRM114-Status: UNSURE (   5.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 netdev@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com, robh+dt@kernel.org,
 paul.walmsley@sifive.com, ynezz@true.cz, linux-riscv@lists.infradead.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> +static int fu540_macb_tx_set_rate(struct clk_hw *hw, unsigned long rate,
> +				  unsigned long parent_rate)
> +{
> +	rate = fu540_macb_tx_round_rate(hw, rate, &parent_rate);
> +	iowrite32(rate != 125000000, mgmt->reg);

That looks odd. Writing the result of a comparison to a register?

     Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
