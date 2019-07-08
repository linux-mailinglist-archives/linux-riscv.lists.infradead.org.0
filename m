Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E88A629D3
	for <lists+linux-riscv@lfdr.de>; Mon,  8 Jul 2019 21:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPErgvDjfbLH5s6p5uJc74x3cjR7skDgY80BHGdSx8U=; b=RVXjV+6mD0RSOh
	cyfqfKqrn51rKqn/riN8S/ExkMayvPCE6cMa56EL+RSA1ye7WWaUD8wK74k8IC4bW5zJdSAz6tFMx
	wbIzuDZ+BuZZ9HwdIB6d9agxLFbiW62+RVn1YzB2Os01LCBlCdHSUh0X2N/dVopnX/CeJ98zORHei
	e9sPnKKGbWW8pk165mqNhIYdm6Yy1F2QQON+Pj5rnEWgWU21zd3X5LLogseWGfoHQ1EuLSmDNm9og
	34IC456JkC5QrFqJE6ueTxhHf65SPPv3WCbvsF1GMB8+THeBzYLNGTtb1PvmwmeZlHUeDudJ/fkE3
	WEZ6zJaqOVTgmKJkY+xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkZXy-0005PP-Vf; Mon, 08 Jul 2019 19:43:34 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkZXv-0005P0-1n
 for linux-riscv@lists.infradead.org; Mon, 08 Jul 2019 19:43:32 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B05B4133E9BDB;
 Mon,  8 Jul 2019 12:43:29 -0700 (PDT)
Date: Mon, 08 Jul 2019 12:43:29 -0700 (PDT)
Message-Id: <20190708.124329.1064143533263537490.davem@davemloft.net>
To: arnd@arndb.de
Subject: Re: [PATCH] [net-next] macb: fix build warning for !CONFIG_OF
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190708124840.3616530-1-arnd@arndb.de>
References: <20190708124840.3616530-1-arnd@arndb.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 08 Jul 2019 12:43:30 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_124331_096546_E2F70E28 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: netdev@vger.kernel.org, palmer@sifive.com, nicolas.ferre@microchip.com,
 linux-kernel@vger.kernel.org, yash.shah@sifive.com, paul.walmsley@sifive.com,
 harini.katakam@xilinx.com, linux-riscv@lists.infradead.org,
 claudiu.beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>
Date: Mon,  8 Jul 2019 14:48:23 +0200

> When CONFIG_OF is disabled, we get a harmless warning about the
> newly added variable:
> 
> drivers/net/ethernet/cadence/macb_main.c:48:39: error: 'mgmt' defined but not used [-Werror=unused-variable]
>  static struct sifive_fu540_macb_mgmt *mgmt;
> 
> Move the variable closer to its use inside of the #ifdef.
> 
> Fixes: c218ad559020 ("macb: Add support for SiFive FU540-C000")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied, thanks Arnd.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
