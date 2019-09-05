Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8B8AAB45
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 20:40:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1EJVDFFlcdBiJPNJBF8xbjDtjs3F+OiBm/d9TIXC84=; b=YUl8qeMSd86rsF
	QPidPlYGYxEWSC+zZ9u1Q32M/wWhltzHAM+h9KHzRmbszQnJMgw1qel2U/R/J/ieBLq46To9m18sP
	cDkcM11EDGh0gvDpTqz0Jvdtxd7AYS0U1X0D7hzhZIOjFn4OUbuEPqJ7JnEwISe3UWwbHnDBRF7v7
	3yttAGBiqpqE+HURiqj4fgh90OnNbUB/NInszo/bpRpPQsObdQY6OUmgO5URiqBuXND0ZeepHkmDd
	iVjcp+ZuPYnUNtMyJB/1rCMqaSwihHN+ZkWYZjPnWRjaqUPzpyogX0IcWMPvL951od9poZI0u8Qth
	XvP1cUW7ptJGl5Rgl+XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5wfo-0007W9-EB; Thu, 05 Sep 2019 18:40:00 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5wfk-0007U9-9R; Thu, 05 Sep 2019 18:39:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567708735;
 bh=bhJITHNaDSNk82tHbXwjAU2m4OSwrTVq9Dh6XgoEVgM=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Lz3Av3TLOi0x6l/ZeUn+JxA7lQAvjyfrdG6ivPQ0tce6WJsbQnRbTWZ4LLQEViLGA
 XYtu5l9Sctw/yz6mYOl7fHcGBSORZGwnAXbJe3W2yzfsgKoKGLZ0flZoolm7UAaCzK
 4/1Dy3RmaMBNVt3vWnheS+pgVtxqCQ6sZIorEq/M=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.90]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0M86jp-1iIvGQ1k4f-00vgyM; Thu, 05
 Sep 2019 20:38:55 +0200
Subject: Re: [PATCH -next 05/36] spi: bcm2835aux: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>, broonie@kernel.org,
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
 eric@anholt.net, shc_work@mail.ru, agross@kernel.org, khilman@baylibre.com,
 matthias.bgg@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 avifishman70@gmail.com, tmaimon77@gmail.com, tali.perry1@gmail.com,
 venture@google.com, yuenn@google.com, benjaminfair@google.com,
 kgene@kernel.org, krzk@kernel.org, andi@etezian.org, palmer@sifive.com,
 paul.walmsley@sifive.com, baohua@kernel.org, mripard@kernel.org,
 wens@csie.org, ldewangan@nvidia.com, thierry.reding@gmail.com,
 jonathanh@nvidia.com, yamada.masahiro@socionext.com, michal.simek@xilinx.com
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-6-yuehaibing@huawei.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <491084d3-c2d6-3a24-687b-2668c7f0c09a@gmx.net>
Date: Thu, 5 Sep 2019 20:38:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904135918.25352-6-yuehaibing@huawei.com>
Content-Language: en-US
X-Provags-ID: V03:K1:AhcbQzoTSubicST5gNCmmM86WbvgdCiog0LAte4hswQdx10x9U3
 BT165vadZAyHuDZCp8X1/ZeC5JqpOYObS1+m486oNy3rM9gdrgI14dPE3E74e3EEZB2IUMv
 MVb3xpFYe5Ue4GjAp6XFrQN4OdX747yTNloHKxIU674bbUjkCOPjkelEUkEYdQlffEFwOWE
 srn/8FFG4jK+iaZNJwzcQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:adRENuIYEO4=:fdhVudO9gEG5Ljf2I1JjWN
 zlT9EzVbICLQwAwbKCfsOQRNuiWdjGbg1HTZ2n4vqfeMrXKuzzWTLhtEeKL1GurMQubfSs/Nk
 504yTYHxt4sRVjaoRan5iROj5BY9QkmDRr8AR2aD+SLeCvN9O51OW2iKDxAcHaRR1nRjkKZ1Y
 cAqTQJNfItknmAGHIip3RZ6sHJ5VlXl24G3y9etJ1beufi4/srwC351zuj83ePNdlyoiDVxf3
 P9XLCesHv0eNFNXwgmqL80K3zUg5d58q0+xUo7NX1Hh9xuJvcMgYXwJ/+aDTcSJYVy/AOHrHQ
 Afc8wED5sIUL4pAW4+tAZ/SDzFy/vjq5Owrmo9URhzEi/3pjAKI1tOrNstohH4K6Bv+BP5Dln
 FE3zFYzkL/wXe7iONVwAJCncwvNcKN5/SDAnltTPN+euDlMjG6u/t/QPU8kxRmNFBfSrFHUGn
 2ndDpb4GRcpEDzL5kN/45FZavu4H+5ZcdR7lIMK1aChVCcWOhwQ7B6YrGvUg2H50N/jvHCfyn
 526BdViUsblAPBwL78V1gj7j3b9AAzDQHY2ympbwgl7wwOFtQlyAE6T7lgSgeA/PYdB62bzF0
 04yzE+TeCWjBBaZgBYNMRSHy8Pwcu9Zat6gk4NEH4h8SgFnU9gRUXmGo0ep4Bkacd8jXRscQT
 iBr0yIlAkLdV54u3L5bK4j6h95WuCXfYrSPR6qFwVBks3dNc9Xy297aBj90c3iNAnr+gUAz9e
 lW35VtwaT5cBBOwI4hYvgqF2US/amjBWJPmXRj0I90xdZguKHhfjno/vwpjLWDvkelwLDm5+J
 6tNo++B91nktW884NEgj9AGSRua5xKVDINuKE9Y/DhqGiNSSglBs50DCigRddr/LeX3kZ4nxb
 Z0FN1ASdo0wA/mnyPx8EQ+lGCmHhnCdsBCL79Dls3gKaDuiioQVb6Vw4vNrkaC9E0zGMUF8Hp
 rxDOttRPcszyKuJbeG0T3D9t4RcGnsYDo651EDHRCwJYx0umLWiClmoacgCwRL/CpknpINu1w
 b92BDA9sc3Lu6cjTvQCNmZ5o3r+o72tNaMaJtJ5zobxWoYrjUalmzxQ10KG4OjoO5GkOloodr
 Fhc3rFJkKoMqjXC0xxg1nmlPg3vN4+5ICP3xT1bv60sGeu0+mUNwM3Lg290Q1ASsbXndICX2M
 WNqNpRy/dU6NrJ1Ll6zy4xH2n3a7gVFBzIVh0d0giFSOdX1vhKy2ZLyxgO8MgBCbu9DNhDmr/
 8vEOmM+86m1g+1+ib
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_113956_641503_AC005F2A 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 openbmc@lists.ozlabs.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Am 04.09.19 um 15:58 schrieb YueHaibing:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Acked-by: Stefan Wahren <wahrenst@gmx.net>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
