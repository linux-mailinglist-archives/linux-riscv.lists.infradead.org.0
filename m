Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC4D129D01
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Dec 2019 04:01:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:References:In-Reply-To:Content-Transfer-Encoding:MIME-Version
	:Content-Type:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GxWZQid0R0nJ18SQRrphBNCRhuxsweBbh+nvYFOP7Z4=; b=EPyJIeDmmJCk5bumMDQgzFkESi
	AXe6Zi4jlcZ+uCVFpFGV16C3smuyW+o3E6iH3RALfa5ukfLVKbZujT9vpxXmVeQ+iIuITCn7K0yhH
	lPE4WgVAEJWgcxEPX3glvk/cALGIMKvox/1F4+5uOweechQgElsyQVPnaoMIpjvDeCJDoGCkQc7mZ
	/TSybBMTKv5E9v5zxBw7VhRgdKnt2ZapqEN8R84HS03kL53mMRdmQLcJCShrqMkkbiclnzx4kzYEL
	XEvZb1/Qtikf1uAc8l/XrQVaKElQ0NOsnkh1Ws3KFaNPa6Gb5NgCooSHGoReN7vQeZjl7dvs1kZgl
	jbMWq0xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijaRJ-0004pp-CL; Tue, 24 Dec 2019 03:00:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijaRG-0004pW-OD
 for linux-riscv@lists.infradead.org; Tue, 24 Dec 2019 03:00:51 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59E95206B7;
 Tue, 24 Dec 2019 03:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577156450;
 bh=NrKmP/pKKzrTVnxrhbEWGh9BtAtGRur1ikxSIvLahO0=;
 h=In-Reply-To:References:Cc:From:To:Subject:Date:From;
 b=VGU+Ae1VYFR7rN1bJsc/luGIK3SXHLp6ZoPSZD4nT9/GbrMtVMfviFP6VQqDvHZD8
 lLY6FAuvA/yxQ1IgSL3UQJYeW5eyE797t6dcIPoWJYoENHGeT7dQeOhsutTCy6IXdS
 SeqhIhwrTxiXB2GS45+1EllIubuIun6RVbdyiGJ0=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191219181914.6015-1-info@metux.net>
References: <20191219181914.6015-1-info@metux.net>
From: Stephen Boyd <sboyd@kernel.org>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drivers: clk: make gpio-gated clock support optional
User-Agent: alot/0.8.1
Date: Mon, 23 Dec 2019 19:00:49 -0800
Message-Id: <20191224030050.59E95206B7@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_190050_806949_6C5D78D3 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: matthias.bgg@gmail.com, mturquette@baylibre.com, linux-clk@vger.kernel.org,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Quoting Enrico Weigelt, metux IT consult (2019-12-19 10:19:14)
> The gpio-gate-clock / gpio-mux-clock driver isn't used much,
> just by a few ARM SoCs, so there's no need to always include
> it unconditionally.
>=20
> Thus make it optional, but keep it enabled by default.
>=20
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  drivers/clk/Kconfig  | 7 +++++++
>  drivers/clk/Makefile | 2 +-
>  2 files changed, 8 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index 45653a0e6ecd..880f89c46f6f 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -23,6 +23,13 @@ config COMMON_CLK
>  menu "Common Clock Framework"
>         depends on COMMON_CLK
> =20
> +config COMMON_CLK_GPIO
> +       tristate "GPIO gated clock support"
> +       default y

Maybe make it depend on GPIOLIB and default to that too?

Otherwise sounds OK to me.


