Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F031207D0
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Dec 2019 15:02:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pcMYk9Deu++0QV3Jk7b/gja2xqw/hPskKqqbjWaqMPo=; b=o6mLDuiSpm/4N7jwuY9cx3jZmr
	Ew94auVZWtmgUIKdxJJ345u0ZWNwEIYe/KTJnHjZ9OlzBuAO6Y7M//sTq+jJD6WQs/bOq5wraTjrQ
	yS9fmNYoj4t5U9oGK1sG0lW+kx0AWpigEHz343DvcPkl0i7Os9SL7SZUv7D21AopYcxidj4eMnl1o
	/7nB9uOTplNN9+VSxoKpM+I3ZZ8hfFULWhJeOHry6W8M1NqvtQqfoCh6oJsnvaU+Zb2XoaEaefktT
	qx+tde3W9hS3P59wtUu67oIRPjoQh32rzOnf0RE4M7BBV9xtuscp+Hm8mbIyozxwX1TQyu9BwCCXj
	L6Uix98w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqwu-00084Q-QZ; Mon, 16 Dec 2019 14:02:12 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqwr-00083S-BI
 for linux-riscv@lists.infradead.org; Mon, 16 Dec 2019 14:02:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5792FB0B8
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 14:02:04 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: linux-riscv@lists.infradead.org
Subject: earlycon: earlycon_map: Couldn't map 0x0000000010010000
X-Yow: TAPPING?  You POLITICIANS!  Don't you realize that the END of the
 ``Wash Cycle'' is a TREASURED MOMENT for most people?!
Date: Mon, 16 Dec 2019 15:02:03 +0100
Message-ID: <mvm8snccqsk.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_060209_536503_61DACC0D 
X-CRM114-Status: UNSURE (   4.30  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

earlycon appears to be broken in 5.5-rc.

[    0.000000] earlycon: earlycon_map: Couldn't map 0x0000000010010000
[    0.000000] earlycon: sifive0 at MMIO 0x0000000010010000 (options '')
[    0.000000] Malformed early option 'earlycon'

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

