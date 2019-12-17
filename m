Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B857E122910
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Dec 2019 11:42:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a1ZA6MZQj+CHYSkY7bFJiuwTsuVmSKjONpcc8hAm+T4=; b=f2mXecMzmkpdaJZkv9VvaOpgS
	q1qqfD+hyqtfCnCW/yHs/Ua00lZkmXFK00PEcP0NqUTWV5RprfBQt7/xIHGG5/uF8YnI44elWx4Sp
	ATh9kmACftysUoUUkkIt5rn53xWcEaKAJSmX6MG2WlJHQx3qg5G6AySmc4EN0St2ytLt1udizn/KH
	wpPt7pCOAzhK4eJ7odvNhKv1FWHVgjBU1jNe2+QYPrG2fYOzGElfE0lOnqH8mWzUX6Y2c4aGB7nXr
	Vn3i/uXe1CAFeBSrdfSwIN3yHEV2t9wPclcgSpAkS7NdTVtArLuiZhcB+oQA/1/fCClvBbvKibn05
	xo89fDV4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihAIg-00076T-4h; Tue, 17 Dec 2019 10:41:58 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihAIc-00075Y-5K
 for linux-riscv@lists.infradead.org; Tue, 17 Dec 2019 10:41:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E1EB7AF79;
 Tue, 17 Dec 2019 10:41:51 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: linux-riscv@lists.infradead.org
Subject: Re: earlycon: earlycon_map: Couldn't map 0x0000000010010000
References: <mvm8snccqsk.fsf@suse.de>
X-Yow: ..  One FISHWICH coming up!!
Date: Tue, 17 Dec 2019 11:41:51 +0100
In-Reply-To: <mvm8snccqsk.fsf@suse.de> (Andreas Schwab's message of "Mon, 16
 Dec 2019 15:02:03 +0100")
Message-ID: <mvm4kxz6xow.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_024154_359482_785D321E 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Dez 16 2019, Andreas Schwab wrote:

> earlycon appears to be broken in 5.5-rc.
>
> [    0.000000] earlycon: earlycon_map: Couldn't map 0x0000000010010000
> [    0.000000] earlycon: sifive0 at MMIO 0x0000000010010000 (options '')
> [    0.000000] Malformed early option 'earlycon'

6bd33e1ece528f67646db33bf97406b747dafda0 is the first bad commit
commit 6bd33e1ece528f67646db33bf97406b747dafda0
Author: Christoph Hellwig <hch@lst.de>
Date:   Mon Oct 28 13:10:41 2019 +0100

    riscv: add nommu support

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

