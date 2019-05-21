Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D90E25131
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 15:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQPWpTyYn/7LS5E3aA8QZV5Yyquz6pRw8zySMZxpK+Y=; b=pFvur7+ofYIqyA
	gvIjfskxhnv5PD4/FBrA/XCif/MP76lbUWqvzrZqbrdYW2Br5EtWEJtil3rcSAmWBwawGeKKPY3Wa
	u0grYnITk1z/szXtBOBatLdYuZ/HxJD+wRCqOHyqyRMl242Dy89s9/4qWiavXbxixW8jjTdxbQpbN
	5LcND+bnygOToncu6mOF+GJ5BjsJCvu6ICS9e8cUY4LPfG+ygZttsnAfT+jdNxLUgZSm9/BPkmg15
	a6gmf86ft00gPSTMcD1jrkFMdkBswDOCFRB9cjjgwEbOCZYX0humk57HE1IycEnJg73DiUjmk2l5M
	mtgqV7LdkBoZp+RQWL2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5ED-0007YK-6J; Tue, 21 May 2019 13:54:53 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5E9-0007Xr-Qc
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 13:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UGCJIN4YC7PwWtW6V8R3e7Y9bx1SazYljWZoygW/HSE=; b=Xyy6tae4c0JF3FPYCIWZ95xYPI
 y+wPD3IVVm4BuYuiroMjJGK0gP/J651/FZFvksMVM1VicCjpHsC44CnpwS6nnuaJFONG+p6WPmSwI
 nclb+1LdtMwCRql6rvzzj2DA5e6fLTjAqXu5QzcVeKoo3t5hZ3dOEAi2AMwgglSYthbE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hT5Dz-0002yK-JF; Tue, 21 May 2019 15:54:39 +0200
Date: Tue, 21 May 2019 15:54:39 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH v6 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC.
Message-ID: <20190521135439.GM22024@lunn.ch>
References: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
 <1558445574-16471-4-git-send-email-sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558445574-16471-4-git-send-email-sagar.kadam@sifive.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_065450_014848_223DCC0D 
X-CRM114-Status: UNSURE (   6.44  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, peter@korsgaard.com,
 palmer@sifive.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

>  static void ocores_process_polling(struct ocores_i2c *i2c)
>  {
> +	const struct of_device_id *match;
> +
> +	match = of_match_node(ocores_i2c_match, i2c->adap.dev.of_node);
> +
>  	while (1) {
>  		irqreturn_t ret;
>  		int err;

Please keep with the idea of i2c->flags, which is set during probe.
Just because it was removed because it was no longer needed does not
stop you from putting it back again if it is needed.

       Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
