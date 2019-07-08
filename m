Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9892061EC2
	for <lists+linux-riscv@lfdr.de>; Mon,  8 Jul 2019 14:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tz0hVp7mzCyw/c9Sdso1LwkvAeVNv22IsIHrXbY1iPs=; b=pvX+OpTI8uEP9C
	3nK6sIzrAArB+H8awAjkLfym3yvN1GyN8CuxvdkBBjniO1pxs72mvGtvASoBykm+88ckVFeA29M3j
	pwrALJOcmfZJpTaKZkOORNQG2g/UjRir9uFAC5GXUBV4oXMMxzhNP5WR8nunsbuZ1+IGy271BkHoC
	+Oj4ac+NYgzfqyLclpmQLrI3DO8uL/wGWZLEiTIAGVU0cKP3iOXYPYDNzxY/Zqbsn8yzXYyoZgzqd
	tMkt9ttPUjCZ7QBcJiGvmTACcVfHTdDb6smhz0/2eO5Ild9OZmG4WTnGygm0/kDzVXvMQHl6smxRt
	lhPU3xQAtL2DLT2r2SiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkT4t-0000GQ-3B; Mon, 08 Jul 2019 12:49:07 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkT4o-0000Fm-PI
 for linux-riscv@lists.infradead.org; Mon, 08 Jul 2019 12:49:04 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MrhHm-1iGSIj2jCe-00nh6M; Mon, 08 Jul 2019 14:48:45 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 "David S. Miller" <davem@davemloft.net>,
 Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH] [net-next] macb: fix build warning for !CONFIG_OF
Date: Mon,  8 Jul 2019 14:48:23 +0200
Message-Id: <20190708124840.3616530-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:X+taGt58qrgWMOLWMf4Bvf333mJptyDHQK7HA/HpVPPyZF7xrMQ
 tjuy5Qx2f3YuT6ZgYHZJn8eFFjPfNQxAnOzZsHk4xaUaqhWqqHwItVDRjyDGRp7qiQFmkyi
 sgP3yzk7u0HzZ6I4I2LDVxXSbZnM7plMQR/LNRJ5djXPcQc0D7G++x/PlOagPjcPDVJW6HL
 +7Ksk5XLkP5+Xco33sUIQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0186pYpNvdU=:TDOWwKRi0pGg6Giz7TyYjK
 oqGpJyjCwnbUFBXq/8lJW9MEOOzaskgFqY4pT8U7iWfGCER4waEjiVORkYV1ajdA8U6pN2ZFl
 1qtZD+TOweWKTKCb4B9rttD3Y4aRx51uE32Vl8EsRHdBR9mcAUu8xo+Hs8BV0NGsfqmyBN0uD
 TjtoLDmatHiZqgW78tZBjebWmOFCIpZtOJngEExmInL7Oe+sLi6dHwO+d3pHB4TEIZxyMo+jn
 27EJld3BGiJzm39XYRjKT6kMtLrS6zg2KYAEj30J/uKNvvnvNeZ/H7oVJArvVSiUaAsvih4mr
 YWbN9+3rFqf+jgv4ikHAybdMI4bNYNVddWiID+9k14A0Fvg4o/XMuLQBIT5YjtQH6ayWDtsVN
 NOAFfAB0zL4DwgM19+3L6o3s6vGf1058VwQOtP+anwDrrCzgcHUrzUhhJokh41ETsFOwW5DGw
 SaFn6nJ0conYI/jHon06vYrByVVvgBD8M6nNqJxlmUjK1/VIrkA1YvPEJtxCNTY178Jvy6uZj
 5pUkQ86dj7xH1tYTtvUsxikUC/pnq2ymCMcZm4wB34fJ6fp0TWWmFsZAkbzMMfhX/s5BeD313
 GgoJ8+1MJSQzRwxn6R2JHypu9snUDib01QBrsrHUp6BnhkTaoun6KexWptJsmZRhChJ8pprgK
 ySiUz3Iwpbg5zVGn4loe3oKUiwo5SmA5Po8RLaXQ3VQb7adhpoOOGdrAISWzYVNAEmETlu0xG
 kfDOKtx023fLuH2GyHsJewYgoWvGZBL87jB9Vw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_054903_117595_B88A3022 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yash Shah <yash.shah@sifive.com>,
 Harini Katakam <harini.katakam@xilinx.com>, linux-riscv@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When CONFIG_OF is disabled, we get a harmless warning about the
newly added variable:

drivers/net/ethernet/cadence/macb_main.c:48:39: error: 'mgmt' defined but not used [-Werror=unused-variable]
 static struct sifive_fu540_macb_mgmt *mgmt;

Move the variable closer to its use inside of the #ifdef.

Fixes: c218ad559020 ("macb: Add support for SiFive FU540-C000")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/cadence/macb_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index a27d32f69de9..5ca17e62dc3e 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -45,8 +45,6 @@ struct sifive_fu540_macb_mgmt {
 	struct clk_hw hw;
 };
 
-static struct sifive_fu540_macb_mgmt *mgmt;
-
 #define MACB_RX_BUFFER_SIZE	128
 #define RX_BUFFER_MULTIPLE	64  /* bytes */
 
@@ -3628,6 +3626,8 @@ static int macb_init(struct platform_device *pdev)
 /* max number of receive buffers */
 #define AT91ETHER_MAX_RX_DESCR	9
 
+static struct sifive_fu540_macb_mgmt *mgmt;
+
 /* Initialize and start the Receiver and Transmit subsystems */
 static int at91ether_start(struct net_device *dev)
 {
-- 
2.20.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
