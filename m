Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226CB28393
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 18:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsEqIWpdiovY73zEHw+SEOUwEmBPynxSosQOihMCfcA=; b=CHTe/U1nfNSEsR
	TV0GpH+z/Yu7irZhqzs7P1JaPOwevOu7iAR9FyqmFnQv0z/u5dinh7qXNnOvxk59+TYtjv0pdh+5R
	3jrAkFSs4xC+F48xJIGOuSpzXnSCsMyyfaukhZweqvF6wOXf7DG8VavN3t0UvsaAE90s3LJEV7gDL
	fj9ECTkEZSGw8uewWcUDb3cNkMxvnMB3rKeHYuJxSNYEIhM0t3BCOWPlYf8P3KDpxlANP4dpUJnjW
	cL/wnrKeS2nAremzfkKO+1WMHe9GOAHwJORYkymq7HzvoZEu1ZKWv3TFhlzdAAr2KKmLVtloDH00x
	mM4N53JZsfJiZbZNRVHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTqa4-0008Mp-5a; Thu, 23 May 2019 16:28:36 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqa0-0008MQ-ST
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 16:28:34 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id DC6D61509BADB;
 Thu, 23 May 2019 09:28:25 -0700 (PDT)
Date: Thu, 23 May 2019 09:28:25 -0700 (PDT)
Message-Id: <20190523.092825.2184612182055559835.davem@davemloft.net>
To: yash.shah@sifive.com
Subject: Re: [PATCH 0/2] net: macb: Add support for SiFive FU540-C000
From: David Miller <davem@davemloft.net>
In-Reply-To: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 23 May 2019 09:28:26 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_092832_923280_9330A50D 
X-CRM114-Status: UNSURE (   4.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 netdev@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com, robh+dt@kernel.org,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org, ynezz@true.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Please be consistent in your subsystem prefixes used in your Subject lines.
You use "net: macb:" then "net/macb:"  Really, plain "macb: " is sufficient.

Thank you.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
