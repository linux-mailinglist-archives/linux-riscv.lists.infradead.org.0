Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF53AAB4D
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 20:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1EJVDFFlcdBiJPNJBF8xbjDtjs3F+OiBm/d9TIXC84=; b=I/7E4MdEaic4ZD
	hhSLTdW6hPYea32Es2iFclUIVIbcAdUY+lXZQ0OZau7IJhpUX903gESohUFrJCOMwYM1rr9X3jOrm
	k2cmUUCJHFX3RcspvAmJsv96Ayg7qxAfzro85mwkItgZIjGmk4qijb6gyVY5LXlkgQoNcjlSqRtw1
	VkEMQf15/MYLA98sqR0mJrVobo1oiAuBzEp2VPSNiH/gVjSvXet4q6wM6sxln8obamHIuL5V2HAWp
	WjWMxBmX9JapcQIo4A5U8oDGXuU60W6alpi9TB9jQb+7NSpmRKfplrGmKECdXdhYYeFOhusiFAWeu
	AY3hzSnn7goxD1gZh7OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5wgC-0000bl-SP; Thu, 05 Sep 2019 18:40:24 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5wg5-0000Wr-RF; Thu, 05 Sep 2019 18:40:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567708792;
 bh=bhJITHNaDSNk82tHbXwjAU2m4OSwrTVq9Dh6XgoEVgM=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=l5gka5lTwefMebb8U4HzIol6vblHmV57FMzes8yN8THNc2vXcQcJZM5dhzYH/tQK4
 Rm3QwWOLfBaeoh2LLT7euoAQqboVIkauh19AbkTP6fIUnF2EtRFEnmRjZxtUUyjeWW
 qjS0cTFWD7MMMZtMvn1Fe9ouR8oBJi5t0xopZDuk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.90]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MMCFR-1i4Ygs4Bw5-00859O; Thu, 05
 Sep 2019 20:39:52 +0200
Subject: Re: [PATCH -next 06/36] spi: bcm2835: use
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
 <20190904135918.25352-7-yuehaibing@huawei.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <c9c6a9ca-5725-513f-2ef3-734ecf0878b8@gmx.net>
Date: Thu, 5 Sep 2019 20:39:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904135918.25352-7-yuehaibing@huawei.com>
Content-Language: en-US
X-Provags-ID: V03:K1:PJZW3p24Sgs9pPgM0nquSd55ClUOxvx8h/ANFNBZrD5MaK8bvKD
 dHfxSFK5ClXmMrJSUR8lOZtZfJA56JgmfFkwVv7amqZJ26WGT9rJFbEFaH/uolq/SSk3/Ik
 CaU2qBvQ+UiBNHCAXrwBe+mgP4L5nXoKh99c43NCmIKAYgIHM3GmDJzctwbGc8axkanZrqb
 kItlAw0DrA85Zrq1bckLw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:anpvg5mTIZw=:5SNYFyWX4G6ecfNsrbwtlx
 /TNEmn+IvOxzbLdzuF8xREYo/Mb0quJpFUk4fLZIaDZRc/+F/YFcML45laZ3kAnjx4pBNoRjO
 FaTTfRdwtSx5/5J9nYb0tB67pARyFpiLNRZHPeVLgFdUlMdrfx0AViG2lcR1WyrQu8EmG0w66
 FupD6Vsv3CPNx5UyEqdvrM3FS14URpj0UbKkRqhhmqSsGNa/m8W9Eot0yghivFIPbC/W+4n4o
 jaTEuayyGrRuIkPrylx/NzddppI6WbP3xHMIYbF4TaVS3IkR+abQ7z50D/5xVjLSQDpKFa57B
 ckqCfAhpYRsoKkvJVpw/+ipQjDIAF41qmM6g4CRaGbxWun3LwiZB90S2AOGePNA4ppJ7aK6Og
 93MNpeQDqmJC4jF40SzBiV5bGYKY9t+sQ2mJ9B24d0iAjzEDa/g0K89frdKWOack+tm82B6gc
 ltMtrA0QSll5wIayinj6TBLy4S3mmBODD3LFeA67qATaC6MCSj69O4LuMtMpKbtfgth06HEMu
 YJ0FQhW4KW/0YU98OTNbUKqXrcY6VxuTAlHxN5kzpG2kcl73oo3uuVp/pW874PR2mqKpBYkAF
 o17lCCG8Hmrgnk+CY4zH2ZucP3GbNBJ3NPZXroU2mZYq+cy/1ZtQEuBRWNr5TfodKF+u15XKj
 cu+WWfsEaKkKsoLiS2dJnJ8c+Lwnn9jECz1wsbWKv4phl7tgWxwFlgPe/pNTVpZ++TjJKuCsg
 T+AEnJ5C7cuUvMW8Uy1C1xK5ZCiOQe9jMAtPKAZu237ChXgkj8wrwlFue2DSDeXfP9j+jtLTA
 0NhL8w0Uq3LMDQW6S8dUioyZ5pjNAaSxp88yWp0qceEyktCtxOL2hmy30iJPAB8V3qJyGe/Hs
 TDQiNNZqGcJ/LQ1EfJTKbn1KwFAg40weTKSTQFAHoG6T1sCUfd5POPN71s+ZYacM5pSDbzqBF
 deyy1C9MIYl0iKHg8Ajzk5Mhyl3sTIi4XtSYvss9RewaUBcYedvXA0rnnK1fxdjZrVzQAFLD4
 LAuNFdEbCzupNWUGMAeZYtJV1B6BhPD7j6jNYoXOerQckMjA6Ke57e0yNkddTN3RCspo2hPyl
 tvCoWGf7hkWKnybbkWmAhueCK2DCj42Dm/1l5jozBLE3rORYfNVAq64ralDwip1IBHAaf3bqR
 seRgj/4/fnfu787yaeEO9o1oR+2J5hYn41YKsgVXMUjRfztTZ70iv+mH+1iD3m/vETnZk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_114018_194398_5F178E6C 
X-CRM114-Status: UNSURE (   6.13  )
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
