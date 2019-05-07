Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22DD166AA
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 17:26:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qN8+iO0xsvxHOykGPck2jzjcxOcoaHVHqWMsOK1lc18=; b=Ti1xs6asX1Zc/x
	rWSwRFbrkxotZjUa1MgMNKHsKWheTYVgyrrUlA0V9NoEhCZ4T0Xqhh81T6rwVXtJ81GAyd0NDERXL
	6xMiFQ/2aOZiLcbwUn1Stmb0bEQP1orvTPG4DROfvWIaYOuA96oWCHqZFVdOkPhPAlcrA2x9NROq5
	xcgY8vk09O1EJbfU4Tj3FyStAVQN1j77oS2iE8HvTnMbyf2ujmdQADh52p6SJDjZb1Lf13cUosNLI
	yF5eDlU1VVgfqMm47MUsqQ+AY41fjeKRqjPgLXeluyMDGu15+cPc9rb2z5uKdJu5v040SvUdDhaAz
	3oyVtnF6/FxRT4436ywg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1zH-0005Fi-Qu; Tue, 07 May 2019 15:26:35 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1zE-0005FM-DW
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 15:26:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OkTpX7RWUbjuME+/eeEVFHbIEAAPGfKhpXcTTXB8fsA=; b=tGuK8yine8+CeCqekOK6Fj7uyR
 vhkqK4SQ1EblJ3PetQVg6ZcqF1S0xcaNh6pdjZOWBjNVuk9ygFZ9wmKQOZEMBS1QLU3xRDSiraAPt
 3xtJAXBkry1Z1rlqQA1HK1XUkEZ5/KZ23mxVAUIlxYvio1oinbirgQs07WRE2u8Fh8WA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hO1z8-0001CD-Er; Tue, 07 May 2019 17:26:26 +0200
Date: Tue, 7 May 2019 17:26:26 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH v2 v2 2/3] i2c-ocore: sifive: add support for i2c device
 on FU540-c000 SoC.
Message-ID: <20190507152626.GD25013@lunn.ch>
References: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
 <1557242108-13580-3-git-send-email-sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557242108-13580-3-git-send-email-sagar.kadam@sifive.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_082632_610916_0FE684EE 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, May 07, 2019 at 08:45:07PM +0530, Sagar Shrikant Kadam wrote:
> Update device id table for Opencores I2C master used in HiFive Unleashed
> platform having FU540-c000 chipset.
> 
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  drivers/i2c/busses/i2c-ocores.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
> index 4e1a077..7bf7b0c 100644
> --- a/drivers/i2c/busses/i2c-ocores.c
> +++ b/drivers/i2c/busses/i2c-ocores.c
> @@ -85,6 +85,7 @@ struct ocores_i2c {
>  
>  #define TYPE_OCORES		0
>  #define TYPE_GRLIB		1
> +#define TYPE_SIFIVE_REV0	2
>  
>  static void oc_setreg_8(struct ocores_i2c *i2c, int reg, u8 value)
>  {
> @@ -465,6 +466,10 @@ static u32 ocores_func(struct i2c_adapter *adap)
>  		.data = (void *)TYPE_OCORES,
>  	},
>  	{
> +		.compatible = "sifive,fu540-c000-i2c",
> +		.data = (void *)TYPE_SIFIVE_REV0,
> +	},

If you list "sifive,i2c0" in the binding document, it should be here
as well.

> +	{
>  		.compatible = "aeroflexgaisler,i2cmst",
>  		.data = (void *)TYPE_GRLIB,
>  	},
> -- 
> 1.9.1
> 
> 
> -- 
> The information transmitted is intended only for the person or entity to 
> which it is addressed and may contain confidential and/or privileged 
> material. If you are not the intended recipient of this message please do 
> not read, copy, use or disclose this communication and notify the sender 
> immediately. It should be noted that any review, retransmission, 
> dissemination or other use of, or taking action or reliance upon, this 
> information by persons or entities other than the intended recipient is 
> prohibited.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
