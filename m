Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771211036B9
	for <lists+linux-riscv@lfdr.de>; Wed, 20 Nov 2019 10:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h258WxgM+c5XKnvgWxFzWLKi9fRuAZiE+HdWp8KWeCM=; b=sTmmn+r4TJ3dOx
	Yzat/j2ymalrKy0eM33Ia9hdF3CbgOIk8Z2rNPKX1ZhmwBrIJF4xF+D9KADSLHqmhnMAtYDG20cRu
	rRioSn95OqpJBDPnEs9ndaCML/GHmsN5tJ5ZeEG6AVASKYb5CPfberdBQLha16WXlSow3KctxfPIl
	c7HpVcX+RPo9CgfVHp5ZKcv/FO7h62NtEYDoNbpWVg1HhD9k/y81WJEqKACndXrR4xPfdKoZIK7Mu
	5Xey8WzjpB5bRDqZQ/5kREeztPjEEHJWESZ72FzVVCQ4+LFsT9ZJCznvHdILhJA/1GmEn+H5Mn6RX
	k+CUl+i3g6D/Uw0iqkTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXMOL-000532-9a; Wed, 20 Nov 2019 09:35:17 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXMOF-0004Rb-LQ
 for linux-riscv@lists.infradead.org; Wed, 20 Nov 2019 09:35:13 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iXMO4-0003sK-AW; Wed, 20 Nov 2019 10:35:00 +0100
Date: Wed, 20 Nov 2019 10:34:59 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v2 1/5] genirq: introduce irq_domain_translate_onecell
In-Reply-To: <1574233128-28114-2-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.1911201034240.6731@nanos.tec.linutronix.de>
References: <1574233128-28114-1-git-send-email-yash.shah@sifive.com>
 <1574233128-28114-2-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_013511_929281_9A47984D 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>, "maz@kernel.org" <maz@kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 Sagar Kadam <sagar.kadam@sifive.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019, Yash Shah wrote:

> Add a new function irq_domain_translate_onecell() that is to be used as
> the translate function in struct irq_domain_ops for the v2 IRQ API.

What is the V2 IRQ API?
 
Thanks,

	tglx

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
