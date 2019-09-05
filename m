Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEB4A9F47
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 12:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niA/kb9ZNrC+M751EsNn83bRL4UZsX608qCwCDHziyQ=; b=elKJxqTFxa0kI+
	u/NQGg71qCmXQtYl0CPpXshCaUAA6DVLETfti1MEOo/dcgHMXxkHTFbUe6Ed+1YWdNjMMo6KEnGCR
	/0FuBsXlsaiYC5FAnxFd4o1MJa98X4w3svOaPWbjj9siodupe43unw5UeHoAnMdVZtVXRgaI19lnZ
	Sud6IXra3CB5n9rXBZbZuo2ElJxIvRtZrggJPgAzzEil2R3Rctkz9b/EQXbolZAlAFQRwVEKcS/Rs
	X4quKPbKKh397mBW7Q1hs6o8jofVffSeNk+O5pM0Rg9VY6v+lIkpgKYK/qWbPepWj3EHrUQrmp5sx
	96C10Y4L6Tt9qS7QYvBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ohl-0001vD-9M; Thu, 05 Sep 2019 10:09:29 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ohP-0001gn-Ty; Thu, 05 Sep 2019 10:09:09 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190905100904euoutp019c3fb88940e131aac2700c13f8fe9444~BgvdSTqE20300203002euoutp01c;
 Thu,  5 Sep 2019 10:09:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190905100904euoutp019c3fb88940e131aac2700c13f8fe9444~BgvdSTqE20300203002euoutp01c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1567678144;
 bh=/gWIDZvkTZVAyd2igvpxAXU5UpAa7v1JWESLTLXaxFw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=IfOrNb+kZTkxao1FkAlfYSuc8UYpRuLZkeYTp0AmZWnqYGrhNdC1uJwpM1LUQ0o49
 3Kw/1TAn0xoy5xgy2Jv1q092BWMiCrVw2rrOy3T1DGkgXu1xSY0zkkhfqa14/d6jag
 vjigfdntWpwgehGDFmhxbPl55oa+X35ck/BjSiz4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190905100903eucas1p1283984102bb9a7fb247fbcf34bf5dfcd~Bgvc2KnLq3213432134eucas1p1e;
 Thu,  5 Sep 2019 10:09:03 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id E8.9C.04374.FBED07D5; Thu,  5
 Sep 2019 11:09:03 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190905100902eucas1p1ce36a6d769640de92f9ff880728a3d26~BgvbnHTXS3108231082eucas1p15;
 Thu,  5 Sep 2019 10:09:02 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190905100901eusmtrp1407fd3d63aef001914d4e303eb138f5b~BgvbXMxgv1278212782eusmtrp1k;
 Thu,  5 Sep 2019 10:09:01 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-92-5d70debf8784
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B6.F9.04166.DBED07D5; Thu,  5
 Sep 2019 11:09:01 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190905100859eusmtip21ad6487f711eebd3b0f45bf62944f9e5~BgvZXo8JY1345813458eusmtip2b;
 Thu,  5 Sep 2019 10:08:59 +0000 (GMT)
Subject: Re: [PATCH -next 25/36] spi: s3c24xx: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>, broonie@kernel.org,
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
 eric@anholt.net, wahrenst@gmx.net, shc_work@mail.ru, agross@kernel.org,
 khilman@baylibre.com, matthias.bgg@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, avifishman70@gmail.com, tmaimon77@gmail.com,
 tali.perry1@gmail.com, venture@google.com, yuenn@google.com,
 benjaminfair@google.com, kgene@kernel.org, krzk@kernel.org,
 andi@etezian.org, palmer@sifive.com, paul.walmsley@sifive.com,
 baohua@kernel.org, mripard@kernel.org, wens@csie.org, ldewangan@nvidia.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com,
 yamada.masahiro@socionext.com, michal.simek@xilinx.com
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <d3803e7b-4d5a-8260-e999-12465744c2a7@samsung.com>
Date: Thu, 5 Sep 2019 12:08:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904135918.25352-26-yuehaibing@huawei.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxbZRj17X1776Wz89LV8Ib5kXQkRjOByX48iQQx4cf9oUH/IYZoHXeM
 yFdaOt1m4qClCgNWhhPabYBQt1EygcL42viQlRU2oUwCMhmjSAk40xKh6GBjs/R2kX/POc85
 ec55k5elFFYmks3MyRc0OeosFS3DHTc3XG/2389Li+2clcPYwiMMDQ+XJLBRVS4Bz2AZBVfK
 hjBU97opODvvoWGgYALBps/BwPxkMhgs9RhsZ7sxnF74i4KNb9ol4HK1MPBjXxOGunO7wL4w
 JYWK/lEGSjYbKZjoOU/DhP4Ogo41Aw0VMwFttatPAgV/32Wg2G+hodAQB74/U8BYfFEKtwzL
 GNpMdVIwWl6ARXMbDVuddgy+Jg+C5fYIONMVCT0DBQxs9NRg2Gx/gKB3oBWDc7g4kGfQJYHe
 +2sI7q0vYTBuXqQTY/jClZs0vzJdxPCWuVGab/mjScr/Zl2l+G7LLMM32Ptpvs6u4w0Or5S3
 24ppvs36Ne+q/gHx311wSPkyvY/mW31dEv70VuwHylRZfLqQlXlU0MQkfCo70rZsQnmtki/N
 7h7qJNJLSlAYS7iDZHRxDZcgGavgLiNyyj9Oi8CPyM/fmykRrCFiejiPnlnuVbSFFpcQqf1n
 XCoCLyK/ls4EVXu4w6Ry1Yq2F0quhCaO9cogoDgzRVzmu/S2iuYOkLKh8qBDziUQT40Bb8+Y
 iyJLo8ag5kUuhay6b0hFTTgZMXuCmjAunvw0fzXIU1wEKfQ3huZXSaf3fDAf4cplpGzsHCMG
 TyIj455QiT3kgbM9xL9EbleWYtGgR6T02gwjAhMic866kONtcsN5J3CCDZx4nTT3xIj0u+T6
 L15mmybcbjLtDRdD7CZnOqookZaTb40KUR1FHtmqQk8fSU55nmITUll2VLPsqGPZUcfy/906
 hG0oQtBpszMEbVyO8EW0Vp2t1eVkRB/KzbajwN+5/cS53oX6Hn82iDgWqZ6Xuy/kpimk6qPa
 Y9mDiLCUSilvbs1LU8jT1ceOC5rcTzS6LEE7iPayWBUhP/Gc+2MFl6HOFz4XhDxB82wrYcMi
 T6Jbw0/zx6MmU/2X7BOXtxQLj6firs1OR23F1e4tsibUZ0oao2c0SenvjdS83xWffGLyyf6a
 yaJ/X5naFdb5O14ec1QfRtdbEl6u3Z/4judgcspKg5wbxexHqY1vscL0oeNM9D5NbO3cYrfm
 qw/jlPor4Ulc4ms23b6hvOHm+quVWUoV1h5RH3iD0mjV/wEZcpemNwQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sf2wTZRjH895d725o43GM7E0TozQmGhM6bqX2GY4Fjc4DiZCoyVQarHBs
 hHadvRaZEmVb2VxN6abg1hNmBwXCFh1txxiNZaMMUEltZDo1zP1wlU2QTmEmbGNou2Gy/755
 v59PnudNHpbkO2gNu73MIdnLzBYtvYi6fO/S4PLoYLlpxcCfRvhudIaCI3fGCJhq3EdAMuYh
 4QvPBQqaosMkHBhJ0tBT2YdgOtXLwMiPG8ClHKag9cAZCryjN0iYqu0gIJE4ycDRs20U+D97
 AEKj/Spo6I4z4J4+QUJf5CANfdXfI+i87aKh4WqabUqcJaDy718YqJtUaKhy6SH1RzHU1B1T
 wbeucQrC9X4V1CgPwe++MA2zp0MUpNqSCMY7cuDjLg1EeioZmIo0UzDdcR1BtCdIwaWv69L7
 xBIERAdvIxj4Z4yCmulj9JpcsWriIi1O/LyXEZWhOC2e/K1NJf4UuEWKZ5RfGfFIqJsW/SGn
 6Oq9qRJDrXW0GA58ICaaWpC4/1CvSvRUp2gxmOoiRO/sio3Zr+sK7DanQ3q01CY7VmvfECBP
 J+SDLm9lvk7QG02r8gza3MKCrZJl+07Jnlv4pq40PF6PyoPELt9whNyDqgk3ymIxtxIPNIRJ
 N1rE8txRhK9VVzFuxKYLDf7cpZ1nluC7/W56nrmB8Mzxe0ymWMJtw5/cCqBMkc25adzoujpH
 kZyPxO2+v+gMxXMW7B3unxtHcwL2XNiHMlnNFeJks4vKZIp7DI/Fa+b4pVwxPt+l3GcW4298
 yTkmiyvAX46cUmUyyT2O7zZfIedzDq6aPHH//RF8+uZBsh7xygJdWaAoCxRlgeJHVCvKlpyy
 tcQqCzrZbJWdZSW6LTZrCKUvtvPiVLgLXQm+HEMci7QPqocP2Uy8yrxTrrDGEGZJbba6PVhu
 4tVbzRXvSnbbZrvTIskxZEh/roHULN1iS99/mWOzYBCMkC8Y9Ub9U6DNUX/IndvEcyVmh7RD
 ksol+/8ewWZp9qD1z67zrck1zUZeOd7y9vPtnfHa1QPFRYZJYn3WhgL5xZJ4xcgdU3iSS1mu
 767ctdZz/t9P98LE7lr+hxeW9egbg4vf8gbcLz1j22bb1F0/U/oEvO9YZhqMFp3yLrfqmcBh
 /7VzxNNJ1vDae/6hVQ9/tH/HVy1Frz5nu/zOWs0QP+5Zp6XkUrPwJGmXzf8Bw90gF8cDAAA=
X-CMS-MailID: 20190905100902eucas1p1ce36a6d769640de92f9ff880728a3d26
X-Msg-Generator: CA
X-RootMTR: 20190905100902eucas1p1ce36a6d769640de92f9ff880728a3d26
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190905100902eucas1p1ce36a6d769640de92f9ff880728a3d26
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-26-yuehaibing@huawei.com>
 <CGME20190905100902eucas1p1ce36a6d769640de92f9ff880728a3d26@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_030908_173074_4547DC0F 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 9/4/19 15:59, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Sylwester Nawrocki <s.nawrocki@samsung.com>


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
