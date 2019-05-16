Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2D420797
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 15:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPbIEsnciSfWjd2XS6bIrk8JMFq2kyvTNp36DR1m53E=; b=X3j1DgE39bLx2Y
	7NSfZ/aFyKTd1ZQEE3oLtmmduyn7ykhjV4+GpedEUXB1dTHPk7MIjhQ4Sv9cP157ZXjd75UONcBgC
	QRWBE7xk8HoLN+Gk3L1bVlkt1zvI+TYq8InZVFIJnNKlrFmT/YH9qgpxahNdSP6s4IW6epL+tECM+
	/Piiw0o25DIiNG6bVWvg2rofBXPflgE78HCKs5qQ+qF4tRiYw4UtOwChHtzaiwLIDnUvIO1CGriMq
	M0pP2dISrMpW5Hw+tPOI4CaOJEuWONj+cRxTHGv5dMgwNl4IwUb3UVHji2ebkOkxJpzr83EuCW1PK
	/lklGykHmcTIjQzOd2qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRG6Z-0000JA-H0; Thu, 16 May 2019 13:07:27 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRG6W-0000Iq-N9
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 13:07:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7nw1SCsI0DVhke4eyWVzQZtBh1eZLI/gGCG931c3pxc=; b=YQdezVNFHlhxbv9xNpI/EQAsV+
 2xP9ZCJsAn1IkuJZq6ih9C+um5dlHI7z5wXEvJoWnZ2LGZHVnR8yrGuT3imfbgcgpYSCkMoOwUBbq
 mREW/vDo263l6IaCe+MurR0dBxsNUlNn9s7UeVXX3qIliji8IbdccZu9/bjCUpz2qDQo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hRG6S-0003NC-Uq; Thu, 16 May 2019 15:07:20 +0200
Date: Thu, 16 May 2019 15:07:20 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH v3 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC
Message-ID: <20190516130720.GE14298@lunn.ch>
References: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
 <1557983320-14461-4-git-send-email-sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557983320-14461-4-git-send-email-sagar.kadam@sifive.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_060724_939743_D6D60339 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, May 16, 2019 at 10:38:40AM +0530, Sagar Shrikant Kadam wrote:
> The i2c-ocore driver already has a polling mode interface.But it needs
> a workaround for FU540 Chipset on HiFive unleashed board (RevA00).
> There is an erratum in FU540 chip that prevents interrupt driven i2c
> transfers from working, and also the I2C controller's interrupt bit
> cannot be cleared if set, due to this the existing i2c polling mode
> interface added in mainline earlier doesn't work, and CPU stall's
> infinitely, when-ever i2c transfer is initiated.
> 
> Ref:previous polling mode support in mainline
> 
> 	commit 69c8c0c0efa8 ("i2c: ocores: add polling interface")
> 
> The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
> FU540-COOO SoC.
> 
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  drivers/i2c/busses/i2c-ocores.c | 34 ++++++++++++++++++++++++++++------
>  1 file changed, 28 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
> index aee1d86..00ee45c 100644
> --- a/drivers/i2c/busses/i2c-ocores.c
> +++ b/drivers/i2c/busses/i2c-ocores.c
> @@ -27,6 +27,7 @@
>  #include <linux/jiffies.h>
>  
>  #define OCORES_FLAG_POLL BIT(0)
> +#define OCORES_FLAG_BROKEN_IRQ BIT(2) /* Broken IRQ in HiFive Unleashed */

Hi Sigar

BIT(1). Don't leave a gap.

	Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
