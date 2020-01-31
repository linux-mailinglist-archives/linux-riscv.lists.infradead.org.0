Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7828414E6CB
	for <lists+linux-riscv@lfdr.de>; Fri, 31 Jan 2020 02:07:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	From:To:Subject:References:In-Reply-To:Content-Transfer-Encoding:MIME-Version
	:Content-Type:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jsJEjfvvosoNzF+1nP8nbj7092fwdtBhOz2X+N5rSYc=; b=uv5nFFG0LDgUQ26PSJYUeaWETe
	ze0HirtG+Z8zQWR/WFBM6U05o9/zAPDJ+qf/yR6WEiRDZd5OIjQsIu0o/vGpKzNWZ9PvZfaob527K
	Vd41ofK6nSWjV1KvN4m1upfc9MmGaijULuBv2M09fhHXuWNELmnYh4Gn7BGVQuI6j1QgUlJCWoNeT
	IyfvzfzmOpofkYoEwrg6V82CkrAPqN4X0npVGNY2hHiYYYMe2auHVE6r54civNzsISv2j6mMZTw3i
	L6bUgW0qYENeFuosZue9++UkQbkKknrgO/2S+uanFkfAEiSNHMe+ZPI12l5A6PVuOSguAzxJzYAyE
	8CVnetPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixKlw-000589-Qg; Fri, 31 Jan 2020 01:07:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixKlr-000578-OE; Fri, 31 Jan 2020 01:06:56 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3336320678;
 Fri, 31 Jan 2020 01:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580432814;
 bh=jsJEjfvvosoNzF+1nP8nbj7092fwdtBhOz2X+N5rSYc=;
 h=In-Reply-To:References:Subject:To:From:Cc:Date:From;
 b=EAVQXk1uO5WynQ7Wtd1arSl2mIu7+KTMUvTyGUtP+CBTahefWsrjBU/w5+WVG5pbJ
 6oeJf0VKlrt/bX9mb5sNu4yXZTeLRu/m8+rnihFdYrPqyT+y1zbbhNQrvRbDOAHQvT
 kM55lR9ogO4s8yk5mrgvNveWr+uooWYXRl/S1ipM=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191209195749.868-1-tiny.windzz@gmail.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
Subject: Re: [PATCH 01/17] clk: sunxi: sunxi-ng: convert to
 devm_platform_ioremap_resource
To: Eugeniy.Paltsev@synopsys.com, Yangtao Li <tiny.windzz@gmail.com>,
 afaerber@suse.de, agross@kernel.org, aisheng.dong@nxp.com, allison@lohutok.net,
 chunhui.dai@mediatek.com, cw00.choi@samsung.com, daniel.baluta@nxp.com,
 dinguyen@kernel.org, emilio@elopez.com.ar, festevam@gmail.com,
 geert+renesas@glider.be, gregkh@linuxfoundation.org, heiko@sntech.de,
 jcmvbkbc@gmail.com, john@phrozen.org, jonathanh@nvidia.com,
 kernel@pengutronix.de, kgene@kernel.org, krzk@kernel.org,
 kstewart@linuxfoundation.org, linux-imx@nxp.com,
 manivannan.sadhasivam@linaro.org, matthias.bgg@gmail.com,
 miquel.raynal@bootlin.com, mripard@kernel.org, mturquette@baylibre.com,
 nsekhar@ti.com, palmer@sifive.com, paul.walmsley@sifive.com,
 pdeschrijver@nvidia.com, pgaikwad@nvidia.com, rfontana@redhat.com,
 robh@kernel.org, s.hauer@pengutronix.de, s.nawrocki@samsung.com,
 shawnguo@kernel.org, swinslow@gmail.com, t-kristo@ti.com, tglx@linutronix.de,
 thierry.reding@gmail.com, tomasz.figa@gmail.com, wangyan.wang@mediatek.com, 
 weiyongjun1@huawei.com, wens@csie.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 30 Jan 2020 17:06:53 -0800
Message-Id: <20200131010654.3336320678@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_170655_818638_CD76F0CF 
X-CRM114-Status: UNSURE (   5.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Quoting Yangtao Li (2019-12-09 11:57:33)
> Use devm_platform_ioremap_resource() to simplify code.
>=20
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Please add a cover letter, resend this series picking up any acks and
dropping any patches that were rejected by maintainers of the drivers.
There was significant discussion on one patch that was rejected, so I'll
only pick up patches for the next cycle that are acked/reviewed-by
relevant folks.


