Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A99C247C40
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 10:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WctwJltE5s2Aiv8avuAGcaQ+ytNEoYHplMNnhE3b6E=; b=bIGZzC8e12sRdx
	ybbxd/b22XhVKINoL+R4qZPDpImsRbSC3vUzhs75bMJjGhL/2AunZNsBgNJ2Z7HNzOdtBjDB1SkSH
	PCHxQZhnJDg7nOsbxVV8MNippReySRyNPvagpsE8LbZP/PkzPXO4LINHPHVoyOjaVGu/CAJwuVPjK
	QK06T4z/BTPICGRLZiX2UMcww0FkK+XCK+QUv0BxorpNJGXP4zQPm6lL3nMLysTvr1VHb6QR95T/O
	95awNFT4WuYJ/8p+daXWGXias8PwAXE/FClm8bwb+e7OBqjR9qksKF4fOeEkw9sIAUvxZTlt2V8+n
	1AJnX1GYARpD+9JPkHtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmxa-0006ZQ-TX; Mon, 17 Jun 2019 08:25:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmxX-0006XB-0y
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 08:25:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6F77DABCD;
 Mon, 17 Jun 2019 08:25:43 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
X-Yow: RELAX!! ... This is gonna be a HEALING EXPERIENCE!!  Besides,
 I work for DING DONGS!
Date: Mon, 17 Jun 2019 10:25:42 +0200
In-Reply-To: <1560745167-9866-1-git-send-email-yash.shah@sifive.com> (Yash
 Shah's message of "Mon, 17 Jun 2019 09:49:25 +0530")
Message-ID: <mvmtvco62k9.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_012547_212729_C8EA07BD 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 netdev@vger.kernel.org, palmer@sifive.com, ynezz@true.cz,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com,
 sachin.ghadi@sifive.com, robh+dt@kernel.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jun 17 2019, Yash Shah <yash.shah@sifive.com> wrote:

> - Add "MACB_SIFIVE_FU540" in Kconfig to support SiFive FU540 in macb
>   driver. This is needed because on FU540, the macb driver depends on
>   SiFive GPIO driver.

This of course requires that the GPIO driver is upstreamed first.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
